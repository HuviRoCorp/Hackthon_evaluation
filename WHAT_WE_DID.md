# MSME Hackathon Portal — Integration Summary

**What this covers:** how the n8n automation, backend, database, and frontend were connected so that AI + human evaluations flow into one combined report shown in the judge dashboard.

---

## The end-to-end flow (what works now)

```
Submission  →  n8n AI evaluation  →  saved to MySQL  →  human review (evaluator)  →  combined report  →  judge dashboard
```

1. n8n runs the AI evaluation (GitHub repo + PPT + abstract → 6 criteria scores).
2. n8n POSTs the result to the backend, which stores it in the database.
3. An evaluator adds a human review through the UI.
4. The backend blends AI + human into one final score (**AI 40% + Human 60%**).
5. The judge sees the combined report in the judge dashboard.

---

## Environment / setup

- **Database:** MySQL, database `hackathon_portal`, running on the **MySQL80 service, port 3307** (root / `NewPass123!`).
  - Data location: `C:\ProgramData\MySQL\MySQL Server 8.0\data\hackathon_portal\`
  - Note: the machine has two MySQL servers installed; the working one is on **3307** (3306 is an unused leftover).
- **Backend:** Spring Boot on port **8080**. DB settings are in `backend/src/main/resources/application.properties` (points to 3307).
- **Frontend:** React on port **3000** (`REACT_APP_API_BASE_URL=http://localhost:8080/api`).
- **Automation:** n8n (workflow files in the project root).

---

## Key things that were fixed

1. **MySQL access** — reset the root password and identified the correct server (port 3307).
2. **Database import** — loaded `full_dump.sql` into `hackathon_portal` (14 tables).
3. **Backend ↔ DB** — pointed the backend at 3307 with correct credentials.
4. **`comments` column too small** — widened to LONGTEXT (was crashing saves).
5. **Automation → backend save (the main fix)** — added two n8n nodes so the workflow actually sends results to the backend:
   - `Build Submit Payload` → builds the JSON the backend expects
   - `Save Evaluation to Backend` → `POST /api/evaluation/submit`
   - This resolved the "automation data was not being saved" issue.
6. **Score field matching** — AI now outputs the backend's exact 6 criteria:
   `Innovation, Technical Implementation, Problem Relevance, Use of AI Tools, Feasibility, Scalability` (temperature 0 for consistent scoring).
7. **Hidden data bug** — a stray `=` in the "Submission Analysis Object" node was sending the AI a blank problem statement (caused 0 scores). Fixed.
8. **Crash resistance** — all JSON-cleaner nodes hardened so a bad AI response can't crash the run.
9. **AI + Human merge bug (judge report)** — the submit endpoint used to overwrite the other side's scores with 0 and lock out the evaluator. Fixed `submitUnifiedEvaluation` to **merge** AI and human (and added an `AI_EVALUATED` status so the evaluator isn't locked out).

---

## Backend endpoints involved

- `POST /api/evaluation/submit` — saves AI and/or human evaluation (merges, doesn't overwrite).
- `GET /api/evaluation/{submissionId}` — read an evaluation.
- `GET /api/judge/evaluations` / `GET /api/judge/report/{id}` — judge dashboard data (combined report).

Combined score formula: `final = (AI_avg × 0.4) + (Human_avg × 0.6)`, scaled to 100.

---

## Files in the project

- `workflow_integrated.json` — n8n workflow, **manual trigger**. Reliable; use for live demos.
- `workflow_webhook.json` — n8n workflow, **webhook trigger**; fetches a submission's real data from the backend by `submissionId` (automated).
- `N8N_INTEGRATION_GUIDE.md` — detailed integration guide.
- `full_dump.sql` — the database dump that was imported.

---

## How to run it (quick)

1. **Backend:** `cd backend` → `.\mvnw.cmd spring-boot:run` (wait for "Tomcat started on port 8080").
2. **Frontend:** `cd frontend` → `npm start` (opens localhost:3000).
3. **Automation:** open the workflow in n8n → Execute (manual) or POST a `submissionId` to the webhook.

---

## How to PROVE it works (before/after test)

1. Clear one submission's evaluation:
   ```sql
   DELETE FROM hackathon_portal.evaluation_scores WHERE evaluation_id IN
     (SELECT evaluation_id FROM hackathon_portal.evaluations WHERE application_id=2);
   DELETE FROM hackathon_portal.evaluations WHERE application_id=2;
   ```
2. Run the n8n workflow.
3. Check the table — a fresh row with scores appears:
   ```sql
   SELECT application_id, ai_scores, total_score
   FROM hackathon_portal.evaluations WHERE application_id=2;
   ```
   Empty → populated proves the automation wrote it.

---

## Honest notes / things to know

- Some rows in the DB (e.g. application 11) are **old seed data from the imported dump**, not produced by our automation (they have no GitHub link and generic remarks). Our automation's real output is in the rows we ran live (e.g. application 8: AI 6.83 + Human 8.83 → 71.33).
- The AI scores are an LLM's judgment of the repo + abstract — they're consistent (temperature 0) and rubric-based, but quality depends on how complete the submission data is.
- A `judge` finalizes the report (Decision moves from PENDING to final) — that last step is a human action by design.
