# Organization Innovation Platform (Full Stack)

This repository runs as an integrated full-stack system comprising:
* **Frontend**: React application located in `frontend/` (default port: `3000`)
* **Backend**: Spring Boot REST API located in `backend/` (default port: `8080`)
* **Database**: MySQL (`hackathon_portal` or `organization_portal`) on default port `3306` (or `3307` in custom settings)
* **Automation**: n8n workflow integration for AI assessment.

---

## 🚀 Quick Start (For Immediate Setup)

### For Windows users
Double-click and run:
* [START_LOCAL.bat](file:///c:/Desktop/MSME/msme%20presentation/MSME_UPDATED/START_LOCAL.bat) (Starts both frontend and backend)
* [START_BACKEND_SAFE.bat](file:///c:/Desktop/MSME/msme%20presentation/MSME_UPDATED/START_BACKEND_SAFE.bat) (Safe backend start, auto-resolves port 8080 conflicts)
* [CHECK_SETUP.bat](file:///c:/Desktop/MSME/msme%20presentation/MSME_UPDATED/CHECK_SETUP.bat) (Checks if Java, Node, and MySQL are installed and available)

### For Mac/Linux users
Run in terminal:
* `bash START_LOCAL.sh`
* `bash START_BACKEND_SAFE.sh`

---

## 🔑 Crucial Credentials & Environment Variables (Save This!)

If you are removing this project from your laptop, keep these credentials and settings handy for future deployments.

### Database Credentials
* **MySQL Database**: `hackathon_portal` (contains active mock data: 38 users) or `organization_portal` (contains 15 users).
* **MySQL Server Host**: `localhost`
* **MySQL Server Port**: `3306` (can be configured via `DB_PORT`)
* **Default Database User**: `root`
* **Pre-configured password (fallback)**: `NewPass123!` (or your local password, e.g. `puja`)

### Key User Logins (Stored in DB)
All platform role users (Evaluators, Judges, Mentors, SPOCs, Admins) share the password **`8004254595`**.

| Role | Username / Email | Phone | Password |
|---|---|---|---|
| **EVALUATOR** | `evaluator@platform.local` | `9000000001` | `8004254595` |
| **JUDGE** | `judge@platform.local` | `9000000002` | `8004254595` |
| **MENTOR** | `mentor@platform.local` | `9000000003` | `8004254595` |
| **EVENT_HEAD** | `eventhead@platform.local` | `9000000004` | `8004254595` |
| **COLLEGE_SPOC** | `spoc@platform.local` | `9000000005` | `8004254595` |
| **ADMIN** | `admin@platform.local` | `9000000006` | `8004254595` |
| **TEAM_MEMBER** | `member@organization.local` | `9999999005` | `9999999005` |
| **TEAM_MEMBER (Puja)** | `middepuja1005@gmail.com` | `9121290912` | `1234` |
| **TEAM_LEAD** | `leader@organization.local` | `9999999002` | *Created at registration* |

---

## 🤖 n8n Automation Flow Integration

The automation workflow integrates n8n as an AI analysis engine that scores and reviews team applications, then writes results back to the database via the Spring Boot backend.

```
+------------------+             +-----------------+             +--------------------+
|  React Frontend  | --(Submit)-->|  Java Backend   | --(Webhook)->|    n8n Workflow    |
|   (Port 3000)    |             |   (Port 8080)   |             | (AI Evaluation Node|
+------------------+             +-----------------+             +---------+----------+
         ^                                                                 |
         |                                                              (POST)
         |                                                                 v
         |                                                       +--------------------+
         +-----------------------(Read Evaluations)--------------|   MySQL Database   |
                                                                 | `hackathon_portal` |
                                                                 +--------------------+
```

### Flow Architecture

1. **Triggering the Flow (Webhook)**:
   * When a team leader submits an application (frontend UI → `POST /api/applications`), a trigger is dispatched to n8n.
   * In n8n, use a **Webhook** node configured to receive the submission payload containing:
     * `submissionId`
     * `githubUrl`
     * `pptFilePath`
2. **AI Evaluation Scorecard**:
   * The workflow runs AI models that extract and score the application against 6 criteria:
     * **Abstract**
     * **Innovation**
     * **Tech Stack**
     * **Implementation**
     * **UI/UX Design**
     * **Code Quality**
3. **POST-Back Node (The Bridge)**:
   * To save n8n results back to the database, add an **HTTP Request** node at the end of the n8n workflow (after the **Final Evaluation Report** node).
   * **Method**: `POST`
   * **URL**: `http://localhost:8080/api/evaluation/submit`
   * **Body Type**: `JSON`
   * **JSON Body Schema**:
     ```json
     ={
       "submissionId": {{$json.submissionId}},
       "evaluatorId": 1002,
       "aiScores": {{ JSON.stringify($json.aiScores) }},
       "aiRemark": "{{$json.finalEvaluation.overallSummary}}",
       "humanScores": {},
       "humanRemark": ""
     }
     ```
   * Once this POST request executes, the backend processes it and writes a row directly to the `evaluations` table.

---

## ⚙️ Configuration & Environment Variables

### Backend Configuration (`backend/src/main/resources/application.properties`)
The backend uses parameter placeholders with sensible defaults, allowing you to configure the connection via environment variables:

```properties
spring.datasource.url=jdbc:mysql://${DB_HOST:localhost}:${DB_PORT:3306}/${DB_NAME:hackathon_portal}
spring.datasource.username=${DB_USERNAME:root}
spring.datasource.password=${DB_PASSWORD:NewPass123!}
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

You can set these environment variables in your terminal before running:
```powershell
$env:DB_HOST="localhost"
$env:DB_PORT="3306"
$env:DB_NAME="hackathon_portal"
$env:DB_USERNAME="root"
$env:DB_PASSWORD="puja"
```

### Frontend Configuration (`frontend/.env`)
Create a `.env` file inside the `frontend/` directory:
```env
REACT_APP_API_BASE_URL=http://localhost:8080/api
```

---

## 💻 Manual Step-by-Step Run Guide

### 1. Database Setup
1. Log into MySQL and create the database:
   ```sql
   CREATE DATABASE hackathon_portal;
   ```
2. Import the existing structure and data:
   ```bash
   mysql -u root -p -h localhost hackathon_portal < full_dump.sql
   ```

### 2. Start Backend
```powershell
cd backend
$env:DB_USERNAME="root"
$env:DB_PASSWORD="puja"
.\mvnw.cmd spring-boot:run
```
Ensure you see: `Tomcat started on port 8080` and `HikariPool-1 - Start completed.`

### 3. Start Frontend
```powershell
cd frontend
npm install
npm start
```
Browser will open at `http://localhost:3000`.

---

## 🧪 Smoke Testing Backend APIs

To verify backend endpoints and database schemas are integrated properly, execute the pre-written PowerShell smoke test:
```powershell
cd backend
.\tmp\api_smoke_test.ps1
```
*Expected output: Success status code `201` for submissions and conflict code `409` for duplicate entries.*
