import { useEffect, useMemo, useState } from "react";
import { useNavigate } from "react-router-dom";
import {
  archiveProblem,
  deleteProblem,
  getAdminDashboard,
  getApplications,
  getProblems,
  updateAdminUserStatus,
  updateProblem,
} from "../services/api";
import { getStoredUser } from "../utils/session";
import "./dashboard.css";

const sections = [
  { id: "overview", label: "Overview" },
  { id: "problems", label: "Problem Statements" },
  { id: "judges", label: "Judge Applications" },
  { id: "evaluators", label: "Evaluator Applications" },
];

function normalizeStatus(status) {
  if (!status) return "PENDING";
  const normalized = String(status).toUpperCase();
  return normalized === "ACTIVE" ? "APPROVED" : normalized;
}

function AdminDashboard() {
  const navigate = useNavigate();
  const currentUser = getStoredUser();
  const [activeSection, setActiveSection] = useState("overview");
  const [dashboard, setDashboard] = useState(null);
  const [problems, setProblems] = useState([]);
  const [applications, setApplications] = useState([]);
  const [loading, setLoading] = useState(true);
  const [editingProblem, setEditingProblem] = useState(null);
  const [form, setForm] = useState({});

  const isAllowed = (localStorage.getItem("role") || currentUser?.role) === "ADMIN";

  const loadAdminData = async () => {
    try {
      setLoading(true);
      const [dashboardResponse, problemsResponse, applicationsResponse] =
        await Promise.all([getAdminDashboard(), getProblems(), getApplications()]);
      setDashboard(dashboardResponse.data || {});
      setProblems(Array.isArray(problemsResponse.data) ? problemsResponse.data : []);
      setApplications(Array.isArray(applicationsResponse.data) ? applicationsResponse.data : []);
    } catch (error) {
      console.error(error);
      setDashboard({});
      setProblems([]);
      setApplications([]);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    loadAdminData();
  }, []);

  const submissionCountByProblem = useMemo(() => {
    const counts = {};
    applications.forEach((application) => {
      const problemId = application.problem?.problemId || application.problemId;
      if (problemId) counts[problemId] = (counts[problemId] || 0) + 1;
    });
    return counts;
  }, [applications]);

  const judges = dashboard?.judges || [];
  const evaluators = dashboard?.evaluators || [];

  const summaryCards = [
    { label: "Total Hackathons", value: dashboard?.totalHackathons ?? problems.length },
    { label: "Total Participants", value: dashboard?.totalParticipants ?? 0 },
    { label: "Total Teams", value: dashboard?.totalTeams ?? 0 },
    { label: "Pending Judge Requests", value: dashboard?.pendingJudgeRequests ?? 0 },
    { label: "Pending Evaluator Requests", value: dashboard?.pendingEvaluatorRequests ?? 0 },
  ];

  const openEditProblem = (problem) => {
    setEditingProblem(problem);
    setForm({
      problemTitle: problem.problemTitle || "",
      problemDescription: problem.problemDescription || "",
      domain: problem.domain || "",
      theme: problem.theme || "",
      status: problem.status || "ACTIVE",
    });
  };

  const saveProblem = async (event) => {
    event.preventDefault();
    await updateProblem(editingProblem.problemId, form);
    setEditingProblem(null);
    await loadAdminData();
  };

  const handleArchiveProblem = async (problemId) => {
    await archiveProblem(problemId);
    await loadAdminData();
  };

  const handleDeleteProblem = async (problemId) => {
    if (!window.confirm("Delete this problem statement?")) return;
    try {
      await deleteProblem(problemId);
      await loadAdminData();
    } catch (error) {
      alert(error?.response?.data?.message || "Unable to delete problem. Archive it if submissions exist.");
    }
  };

  const updateUserStatus = async (userId, status) => {
    await updateAdminUserStatus(userId, status);
    await loadAdminData();
  };

  const renderOverview = () => (
    <>
      <div className="summary-grid admin-summary-grid">
        {summaryCards.map((card) => (
          <div key={card.label} className="summary-card">
            <span>{card.label}</span>
            <strong>{card.value}</strong>
          </div>
        ))}
      </div>

      <div className="dashboard-grid">
        <div className="team-card">
          <h3>Recent Activities</h3>
          {(dashboard?.recentActivities || []).length > 0 ? (
            dashboard.recentActivities.map((activity) => (
              <div key={activity.notificationId || activity.id} className="member-item activity-item">
                <div>{activity.message}</div>
                <small className="activity-time">{activity.type || "Activity"}</small>
              </div>
            ))
          ) : (
            <p className="no-team">No recent activities found</p>
          )}
        </div>

        <div className="team-card">
          <h3>Quick Actions</h3>
          <div className="dashboard-buttons">
            <button onClick={() => navigate("/add-problem")}>Create Problem Statement</button>
            <button onClick={() => setActiveSection("problems")}>View All Problems</button>
            <button onClick={() => setActiveSection("judges")}>Review Judges</button>
            <button onClick={() => setActiveSection("evaluators")}>Review Evaluators</button>
          </div>
        </div>
      </div>
    </>
  );

  const renderProblems = () => (
    <div className="team-card admin-table-card">
      <div className="admin-card-head">
        <h3>Problem Statements</h3>
        <button onClick={() => navigate("/add-problem")}>Create Problem Statement</button>
      </div>
      <table className="application-table">
        <thead>
          <tr>
            <th>ID</th>
            <th>Problem Statement</th>
            <th>Theme</th>
            <th>Submissions</th>
            <th>Status</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          {problems.length === 0 ? (
            <tr><td colSpan="6">No problem statements found.</td></tr>
          ) : (
            problems.map((problem) => (
              <tr key={problem.problemId}>
                <td>{problem.customProblemId || problem.problemId}</td>
                <td>{problem.problemTitle}</td>
                <td>{problem.theme || "General"}</td>
                <td>{submissionCountByProblem[problem.problemId] || 0}</td>
                <td><span className="admin-status">{problem.status || "ACTIVE"}</span></td>
                <td className="admin-actions">
                  <button onClick={() => openEditProblem(problem)}>Edit</button>
                  <button onClick={() => handleArchiveProblem(problem.problemId)}>Archive</button>
                  <button onClick={() => handleDeleteProblem(problem.problemId)}>Delete</button>
                </td>
              </tr>
            ))
          )}
        </tbody>
      </table>
    </div>
  );

  const renderUserApplications = (users, roleLabel) => {
    const grouped = {
      pending: users.filter((user) => normalizeStatus(user.accountStatus) === "PENDING"),
      approved: users.filter((user) => normalizeStatus(user.accountStatus) === "APPROVED"),
      rejected: users.filter((user) => normalizeStatus(user.accountStatus) === "REJECTED"),
    };

    return (
      <div className="admin-stack">
        {Object.entries(grouped).map(([status, rows]) => (
          <div key={status} className="team-card admin-table-card">
            <h3>{status.charAt(0).toUpperCase() + status.slice(1)} {roleLabel}</h3>
            <table className="application-table">
              <thead>
                <tr>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Phone</th>
                  <th>Status</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                {rows.length === 0 ? (
                  <tr><td colSpan="5">No {status} applications.</td></tr>
                ) : (
                  rows.map((user) => (
                    <tr key={user.userId}>
                      <td>{user.fullName || "N/A"}</td>
                      <td>{user.email || "N/A"}</td>
                      <td>{user.phoneNumber || "N/A"}</td>
                      <td><span className="admin-status">{normalizeStatus(user.accountStatus)}</span></td>
                      <td className="admin-actions">
                        <button onClick={() => alert(`${user.fullName || "Profile"}\n${user.email || ""}\n${user.phoneNumber || ""}`)}>View Profile</button>
                        <button onClick={() => alert("No proof file is stored for this application.")}>View Proof</button>
                        {status === "pending" && (
                          <>
                            <button onClick={() => updateUserStatus(user.userId, "APPROVED")}>Approve</button>
                            <button onClick={() => updateUserStatus(user.userId, "REJECTED")}>Reject</button>
                          </>
                        )}
                      </td>
                    </tr>
                  ))
                )}
              </tbody>
            </table>
          </div>
        ))}
      </div>
    );
  };

  if (!isAllowed) {
    return <p style={{ padding: "80px" }}>Admin access only.</p>;
  }

  return (
    <div className="dashboard-shell">
      <aside className="dashboard-sidebar">
        <div>
          <p className="sidebar-eyebrow">Platform</p>
          <h2 className="dashboard-title">Admin</h2>
        </div>
        {sections.map((section) => (
          <button key={section.id} onClick={() => setActiveSection(section.id)}>
            {section.label}
          </button>
        ))}
      </aside>

      <section className="dashboard-content">
        <div className="dashboard-hero">
          <div>
            <p className="sidebar-eyebrow">Admin Dashboard</p>
            <h1>{currentUser?.name || "Admin User"}</h1>
            <p>Manage problems, judges, evaluators, teams, and platform activity.</p>
          </div>
          <div className="hero-actions">
            <button onClick={loadAdminData}>Refresh</button>
          </div>
        </div>

        {loading ? (
          <div className="team-card"><p className="no-team">Loading dashboard...</p></div>
        ) : (
          <>
            {activeSection === "overview" && renderOverview()}
            {activeSection === "problems" && renderProblems()}
            {activeSection === "judges" && renderUserApplications(judges, "Judges")}
            {activeSection === "evaluators" && renderUserApplications(evaluators, "Evaluators")}
          </>
        )}
      </section>

      {editingProblem && (
        <div className="admin-modal-backdrop" role="dialog" aria-modal="true">
          <form className="team-card admin-edit-modal" onSubmit={saveProblem}>
            <h3>Edit Problem Statement</h3>
            <label>Title</label>
            <input value={form.problemTitle} onChange={(e) => setForm({ ...form, problemTitle: e.target.value })} />
            <label>Theme</label>
            <input value={form.theme} onChange={(e) => setForm({ ...form, theme: e.target.value })} />
            <label>Sector</label>
            <input value={form.domain} onChange={(e) => setForm({ ...form, domain: e.target.value })} />
            <label>Status</label>
            <select value={form.status} onChange={(e) => setForm({ ...form, status: e.target.value })}>
              <option value="ACTIVE">ACTIVE</option>
              <option value="INACTIVE">INACTIVE</option>
              <option value="ARCHIVED">ARCHIVED</option>
            </select>
            <label>Description</label>
            <textarea rows="5" value={form.problemDescription} onChange={(e) => setForm({ ...form, problemDescription: e.target.value })} />
            <div className="dashboard-buttons">
              <button type="submit">Save</button>
              <button type="button" onClick={() => setEditingProblem(null)}>Cancel</button>
            </div>
          </form>
        </div>
      )}
    </div>
  );
}

export default AdminDashboard;
