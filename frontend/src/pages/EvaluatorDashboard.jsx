import { useCallback, useEffect, useMemo, useState } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import { getApplications, getProblems } from "../services/api";
import "./judging.css";
import "./evaluator.css";

const DAILY_SUBMISSION_KEY = "evaluator_submissions_evaluated";
const DAILY_SUBMISSION_LIMIT = 8;

const getTodayKey = () => {
  const now = new Date();
  const year = now.getFullYear();
  const month = String(now.getMonth() + 1).padStart(2, "0");
  const day = String(now.getDate()).padStart(2, "0");
  return `${year}-${month}-${day}`;
};

const createEmptyDailySubmissions = () => ({
  date: getTodayKey(),
  evaluatedSubmissionIds: [],
});

const readDailySubmissions = () => {
  const today = getTodayKey();

  try {
    const parsed = JSON.parse(
      localStorage.getItem(DAILY_SUBMISSION_KEY) || "{}",
    );
    if (parsed?.date === today && Array.isArray(parsed.evaluatedSubmissionIds)) {
      return {
        date: today,
        evaluatedSubmissionIds: parsed.evaluatedSubmissionIds
          .map(Number)
          .filter(Number.isFinite),
      };
    }
  } catch (error) {
    console.error(error);
  }

  const resetSubmissions = createEmptyDailySubmissions();
  localStorage.setItem(DAILY_SUBMISSION_KEY, JSON.stringify(resetSubmissions));
  return resetSubmissions;
};

function EvaluatorDashboard() {
  const navigate = useNavigate();
  const location = useLocation();
  const [problems, setProblems] = useState([]);
  const [submissions, setSubmissions] = useState([]);
  const [selectedProblem, setSelectedProblem] = useState(null);
  const [dailySubmissions, setDailySubmissions] = useState(readDailySubmissions);
  const [loadingProblems, setLoadingProblems] = useState(true);
  const [loadingApplications, setLoadingApplications] = useState(false);
  const [filter, setFilter] = useState("all");
  const [limitMessage, setLimitMessage] = useState("");
  const [toastMessage, setToastMessage] = useState(location.state?.toast || "");
  const [submissionCounts, setSubmissionCounts] = useState({});

  const currentRole = localStorage.getItem("role");
  const isAllowed = currentRole === "EVALUATOR";

  const evaluatedSubmissionIds = useMemo(
    () => dailySubmissions.evaluatedSubmissionIds || [],
    [dailySubmissions],
  );

  const normalizeProblem = useCallback((problem, index) => {
    const problemId = Number(problem?.problemId || problem?.id);
    return {
      ...problem,
      problemId,
      psNumber:
        problem?.psNumber ||
        (Number.isFinite(problemId) ? `PS${problemId}` : `PS${index + 1}`),
      problemTitle:
        problem?.problemTitle || problem?.title || "Untitled problem statement",
      problemCategory:
        problem?.problemCategory ||
        problem?.category ||
        problem?.difficultyLevel ||
        "N/A",
      submissionDeadline: problem?.submissionDeadline || "N/A",
    };
  }, []);

  const normalizeSubmission = useCallback((app) => {
    const statusText = (app?.submissionStatus || "").toLowerCase();
    const isEvaluated = statusText === "evaluated" || statusText === "judged";

    return {
      id: app?.applicationId || app?.id,
      problemId: Number(app?.problem?.problemId || app?.problem?.id),
      problemStatement:
        app?.problem?.problemTitle || app?.problem?.title || "N/A",
      teamName: app?.team?.teamName || "N/A",
      leader: app?.team?.leader?.fullName || "N/A",
      aiScore: app?.aiScore ?? "-",
      manualScore: app?.manualScore ?? "-",
      status: isEvaluated ? "Evaluated" : "Pending",
    };
  }, []);

  const loadProblems = useCallback(async () => {
    try {
      setLoadingProblems(true);
      
      // Load both problems and applications
      const [problemsRes, applicationsRes] = await Promise.all([
        getProblems(),
        getApplications(),
      ]);
      
      const allApplications = (applicationsRes.data || []).map(normalizeSubmission);
      setSubmissions(allApplications);
      
      // Count applications per problem
      const counts = {};
      allApplications.forEach((app) => {
        counts[app.problemId] = (counts[app.problemId] || 0) + 1;
      });
      setSubmissionCounts(counts);
      
      // Filter problems to only those with applications
      const appliedProblemIds = Object.keys(counts).map(Number);
      const filteredProblems = (problemsRes.data || [])
        .filter((p) => appliedProblemIds.includes(Number(p?.problemId || p?.id)))
        .map(normalizeProblem);
      
      setProblems(filteredProblems);
    } catch (error) {
      console.error(error);
      setProblems([]);
      setSubmissions([]);
      setSubmissionCounts({});
    } finally {
      setLoadingProblems(false);
    }
  }, [normalizeProblem, normalizeSubmission]);

  const loadApplications = useCallback(async () => {
    try {
      setLoadingApplications(true);
      const response = await getApplications();
      setSubmissions((response.data || []).map(normalizeSubmission));
    } catch (error) {
      console.error(error);
      setSubmissions([]);
    } finally {
      setLoadingApplications(false);
    }
  }, [normalizeSubmission]);

  useEffect(() => {
    const refreshedSubmissions = readDailySubmissions();
    setDailySubmissions(refreshedSubmissions);
    loadProblems();
  }, [loadProblems]);

  useEffect(() => {
    if (!toastMessage) {
      return undefined;
    }

    const timer = setTimeout(() => {
      setToastMessage("");
      navigate(location.pathname, { replace: true, state: {} });
    }, 2800);

    return () => clearTimeout(timer);
  }, [toastMessage, navigate, location.pathname]);

  const persistDailySubmissions = useCallback((nextSubmissions) => {
    localStorage.setItem(DAILY_SUBMISSION_KEY, JSON.stringify(nextSubmissions));
    setDailySubmissions(nextSubmissions);
  }, []);

  const handleSelectProblem = useCallback(
    async (problem) => {
      const problemId = Number(problem?.problemId);
      if (!Number.isFinite(problemId)) {
        return;
      }

      setLimitMessage("");
      setSelectedProblem(problem);
      setFilter("all");
      await loadApplications();
    },
    [loadApplications],
  );

  const handleBackToProblems = useCallback(() => {
    setSelectedProblem(null);
    setFilter("all");
    setSubmissions([]);
    setLimitMessage("");
  }, []);

  const handleRefresh = useCallback(() => {
    if (selectedProblem) {
      loadApplications();
      return;
    }
    setDailySubmissions(readDailySubmissions());
    loadProblems();
  }, [loadApplications, loadProblems, selectedProblem]);

  const selectedProblemSubmissions = useMemo(() => {
    if (!selectedProblem) {
      return [];
    }

    return submissions.filter(
      (submission) => submission.problemId === selectedProblem.problemId,
    );
  }, [selectedProblem, submissions]);

  const filteredSubmissions = useMemo(() => {
    if (filter === "pending") {
      return selectedProblemSubmissions.filter(
        (submission) => submission.status === "Pending",
      );
    }
    if (filter === "evaluated") {
      return selectedProblemSubmissions.filter(
        (submission) => submission.status === "Evaluated",
      );
    }
    return selectedProblemSubmissions;
  }, [filter, selectedProblemSubmissions]);

  if (!isAllowed) {
    return <p style={{ padding: "80px" }}>Evaluator access only.</p>;
  }

  return (
    <div className="judging-dashboard-container evaluator-dashboard-container">
      <div className="judging-dashboard-head evaluator-dashboard-head">
        <div className="judging-title-block">
          <h2 className="judging-page-title">
            Hackathon Evaluation Dashboard
          </h2>
          <p className="judging-page-subtitle">
            {selectedProblem
              ? `Reviewing ${selectedProblem.psNumber}: ${selectedProblem.problemTitle}`
              : "Select a problem statement to begin evaluation."}
          </p>
        </div>

        <div className="judging-toolbar">
          {selectedProblem && (
            <select
              className="judging-filter"
              value={filter}
              onChange={(event) => setFilter(event.target.value)}
            >
              <option value="all">All</option>
              <option value="pending">Pending</option>
              <option value="evaluated">Evaluated</option>
            </select>
          )}
          <button
            type="button"
            className="judging-refresh-btn"
            onClick={handleRefresh}
          >
            Refresh
          </button>
        </div>
      </div>

      {toastMessage && <div className="judging-toast">{toastMessage}</div>}

      {selectedProblem ? (
        <>
          <div className="evaluator-phase-bar">
            <button
              type="button"
              className="evaluator-back-btn"
              onClick={handleBackToProblems}
            >
              &larr; Back to Problem Statements
            </button>
            <div className="evaluator-selected-summary">
              <span>{selectedProblem.psNumber}</span>
              <strong>{selectedProblem.problemTitle}</strong>
            </div>
          </div>

          <div className="judging-table-shell">
            <div className="judging-table-wrap">
              <table className="judging-table">
                <thead>
                  <tr>
                    <th>Problem Statement</th>
                    <th>Team</th>
                    <th>Status</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  {loadingApplications ? (
                    <tr>
                      <td colSpan="4">Loading submissions...</td>
                    </tr>
                  ) : filteredSubmissions.length === 0 ? (
                    <tr>
                      <td colSpan="4">
                        No submissions found for this problem statement.
                      </td>
                    </tr>
                  ) : (
                    filteredSubmissions.map((submission) => {
                      const isEvaluated =
                        submission.status === "Evaluated" ||
                        submission.status === "Judged";
                      return (
                        <tr key={submission.id}>
                          <td>{submission.problemStatement}</td>
                          <td>{submission.teamName}</td>
                          <td>
                            <span
                              className={`status-badge ${isEvaluated ? "status-judged" : "status-pending"}`}
                            >
                              {submission.status}
                            </span>
                          </td>
                          <td className="judging-actions-cell">
                            {!isEvaluated ? (
                              <button
                                className="action-btn action-judge"
                                onClick={() => {
                                  const currentSubmissions = readDailySubmissions();
                                  if (
                                    currentSubmissions.evaluatedSubmissionIds.length <
                                    DAILY_SUBMISSION_LIMIT
                                  ) {
                                    persistDailySubmissions({
                                      ...currentSubmissions,
                                      evaluatedSubmissionIds: [
                                        ...currentSubmissions.evaluatedSubmissionIds,
                                        submission.id,
                                      ],
                                    });
                                    navigate(`/evaluate/${submission.id}`);
                                  } else {
                                    setLimitMessage(
                                      `You have reached the daily limit of ${DAILY_SUBMISSION_LIMIT} submissions. Please try again tomorrow.`,
                                    );
                                  }
                                }}
                              >
                                Evaluate
                              </button>
                            ) : (
                              <>
                                <button
                                  className="action-btn action-evaluated"
                                  onClick={() =>
                                    alert(
                                      "This application is already evaluated.",
                                    )
                                  }
                                >
                                  Evaluated
                                </button>
                                <button
                                  className="action-btn action-report"
                                  onClick={() =>
                                    navigate(
                                      `/evaluation-report/${submission.id}`,
                                    )
                                  }
                                >
                                  View Report
                                </button>
                              </>
                            )}
                          </td>
                        </tr>
                      );
                    })
                  )}
                </tbody>
              </table>
            </div>
          </div>
        </>
      ) : (
        <section className="evaluator-selection-panel">
          <div className="evaluator-selection-head">
            <div>
              <h3>Problem Statements</h3>
              <p>
                Choose a problem statement before viewing teams or submissions.
              </p>
            </div>
            <span className="evaluator-selection-counter">
              {evaluatedSubmissionIds.length} / {DAILY_SUBMISSION_LIMIT} submissions evaluated today
            </span>
          </div>

          {limitMessage && (
            <div className="evaluator-limit-message">{limitMessage}</div>
          )}

          {loadingProblems ? (
            <div className="evaluator-empty-state">
              Loading problem statements...
            </div>
          ) : problems.length === 0 ? (
            <div className="evaluator-empty-state">
              No problem statements found.
            </div>
          ) : (
            <div className="evaluator-problem-grid">
              {problems.map((problem) => {
                const submissionCount = submissionCounts[problem.problemId] || 0;
                return (
                  <article
                    className="evaluator-problem-card"
                    key={problem.problemId}
                  >
                    <div className="evaluator-card-topline">
                      <span className="evaluator-ps-number">
                        {problem.psNumber}
                      </span>
                    </div>
                    <h4>{problem.problemTitle}</h4>
                    <div className="evaluator-problem-meta">
                      <div>
                        <span>Submissions</span>
                        <strong>{submissionCount}</strong>
                      </div>
                      <div>
                        <span>Category</span>
                        <strong>{problem.problemCategory}</strong>
                      </div>
                    </div>
                    <button
                      type="button"
                      className="evaluator-select-btn"
                      onClick={() => handleSelectProblem(problem)}
                    >
                      Select to Evaluate
                    </button>
                    <button
                      type="button"
                      className="evaluator-select-btn"
                      style={{ marginTop: "10px", backgroundColor: "#10b981" }}
                      onClick={() => navigate('/problem-analysis', { state: { problemId: problem.problemId } })}
                    >
                      View AI Report
                    </button>
                  </article>
                );
              })}
            </div>
          )}
        </section>
      )}
    </div>
  );
}

export default EvaluatorDashboard;
