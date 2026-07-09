# n8n ↔ Backend ↔ Database ↔ Frontend — Integration Guide

This maps the 8 audio steps to concrete actions for THIS project.
Backend: Spring Boot (port 8080) · Frontend: React (port 3000) · DB: MySQL `hackathon_portal` on **port 3307** · Automation: n8n.

---

## The key problem (why data wasn't being saved)

Your n8n workflow runs all the AI analysis and ends at the **"Final Evaluation Report"** node — but that node only outputs JSON *inside n8n*. **Nothing sends it to the backend.** The backend already exposes a ready endpoint to receive it:

```
POST http://localhost:8080/api/evaluation/submit
```

So the fix (Step 6) is: add one HTTP Request node at the end of n8n that POSTs the result to that endpoint. The backend then writes it to the `evaluations` table.

---

## Status so far
- ✅ Database imported — `full_dump.sql` loaded into `hackathon_portal` (14 tables) on port 3307.
- ✅ Backend pointed at port 3307, credentials hardcoded (`root` / `NewPass123!`) in `application.properties`.
- ⬜ Backend + frontend running.
- ⬜ n8n posting results back to the backend.

---

## Step 1 — Run the initial automation
Import the corrected workflow (`hackathon_patched.json`) into n8n, click **Execute workflow**, and confirm it runs end-to-end and the **Final Evaluation Report** node produces JSON. This proves the flow works before wiring it to the backend.

## Step 2 — Initialize the database  ✅ DONE
The "zipped data file" = `dumps.zip` / `full_dump.sql`. Already imported into `hackathon_portal` on 3307.
(If you ever redo it: `mysql -u root -pNewPass123! -P 3307 -h 127.0.0.1 hackathon_portal < full_dump.sql`)

## Step 3 — Update environment variables  ✅ (mostly)
- **Backend** `backend/src/main/resources/application.properties` already set:
  - `spring.datasource.url=jdbc:mysql://localhost:3307/hackathon_portal`
  - `spring.datasource.username=root`
  - `spring.datasource.password=NewPass123!`
- **Frontend** — set the API base URL before starting:
  - `REACT_APP_API_BASE_URL=http://localhost:8080/api`

## Step 4 — Run backend and frontend
**Backend** (Terminal 1):
```
cd backend
.\mvnw.cmd spring-boot:run
```
Wait for: `HikariPool-1 - Added connection` and `Tomcat started on port(s): 8080`.

**Frontend** (Terminal 2):
```
cd frontend
$env:REACT_APP_API_BASE_URL="http://localhost:8080/api"
npm install
npm start
```
Opens at `http://localhost:3000`.

## Step 5 — Match data fields (n8n output → backend)
The backend's `/api/evaluation/submit` expects this exact JSON (`EvaluationSubmitRequest`):
```json
{
  "submissionId": 1,
  "evaluatorId": 1,
  "aiScores": {
    "Abstract": 80,
    "Innovation": 75,
    "Tech Stack": 70,
    "Implementation": 78,
    "UI/UX Design": 65,
    "Code Quality": 72
  },
  "aiRemark": "Overall summary text from the AI",
  "humanScores": {},
  "humanRemark": ""
}
```
Field mapping:
| Backend field | Comes from (n8n) |
|---|---|
| `submissionId` | The application's DB id (must be a REAL id from the `applications` table — not the hardcoded test data) |
| `evaluatorId` | An evaluator user id (e.g. seed user `1002`), or a system/AI user |
| `aiScores` | The 6 criteria scores from the **AI Evaluation Scorecard** branch (Abstract, Innovation, Tech Stack, Implementation, UI/UX Design, Code Quality) |
| `aiRemark` | `finalEvaluation.overallSummary` from the Master Evaluation |
| `humanScores` / `humanRemark` | Leave empty — filled later by a human judge in the frontend |

> Note: the criteria keys must match the names seeded in `evaluation_criteria` (Abstract, Innovation, Tech Stack, Implementation, UI/UX Design, Code Quality).

## Step 6 — Integrate n8n with the backend (THE FIX)
Add a new **HTTP Request** node right after **Final Evaluation Report**:
- **Method:** POST
- **URL:** `http://localhost:8080/api/evaluation/submit`
- **Send Body:** ON · **Body Content Type:** JSON
- **JSON Body** (build it from the workflow's data):
```
={
  "submissionId": {{$json.submissionId}},
  "evaluatorId": 1002,
  "aiScores": {{ JSON.stringify($json.aiScores) }},
  "aiRemark": "{{$json.finalEvaluation.overallSummary}}",
  "humanScores": {},
  "humanRemark": ""
}
```
After this node runs, check MySQL: `SELECT * FROM evaluations ORDER BY evaluation_id DESC LIMIT 1;` — the row should appear. That confirms data is now being saved.

## Step 7 — Update the database for the automation
So the backend can store the AI fields, make sure the extra columns/tables exist. Either:
- Let Hibernate do it automatically (`spring.jpa.hibernate.ddl-auto=update` is already on — it adds entity columns on startup), **or**
- Run the provided migration scripts once:
```
mysql -u root -pNewPass123! -P 3307 -h 127.0.0.1 hackathon_portal < mysql_hackathon_schema_update.sql
mysql -u root -pNewPass123! -P 3307 -h 127.0.0.1 hackathon_portal < JUDGE_REPORTS_DDL.sql
```
These add `evaluations.ai_scores`, `ai_remark`, `report_payload`, the `judge_reports` table, and seed roles/criteria.

## Step 8 — Finalize the frontend integration
Two connections to make:
1. **Trigger:** when a team submits (frontend → backend `POST /api/applications`), have the backend (or frontend) call the n8n workflow's **Webhook** with the new `submissionId`, `githubUrl`, and PPT info. (Replace the manual trigger + hardcoded `Submission Data` in n8n with a **Webhook** node so it receives real data.)
2. **Display:** the frontend reads results back via `GET /api/evaluation/{submissionId}` (already implemented) and shows scores/remarks on the evaluation/judge dashboard.

---

## Recommended order to actually do it
1. Get the backend running (Step 4) and confirm DB connection.
2. Run n8n manually once (Step 1) to confirm the flow works.
3. Add the POST-back node (Step 6) and verify a row lands in `evaluations` (Step 5 mapping).
4. Run the migration scripts if any column is missing (Step 7).
5. Switch n8n's trigger to a Webhook and wire frontend trigger + display (Step 8).
