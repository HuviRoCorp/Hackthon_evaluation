import { useState } from "react";
import { useNavigate, useSearchParams } from "react-router-dom";

import {
  login,
  getTeamByLeaderId,
  getTeamMemberTeam,
} from "../services/api";

import { saveSession } from "../utils/session";

import "./login.css";

function Login() {
  const navigate = useNavigate();

  const [searchParams] = useSearchParams();

  const source = searchParams.get("source");

  const [email, setEmail] = useState("");

  const [role, setRole] = useState("");

  const [loading, setLoading] = useState(false);

  const [message, setMessage] = useState("");

  const [messageType, setMessageType] = useState("error");

  const showMsg = (text, type = "error") => {
    setMessage(text);
    setMessageType(type);
  };

  // --FOR LOGIN  VERIFICATION

  const handleLogin = async () => {
    if (!email.trim()) {
      return showMsg("Please enter your email");
    }

    if (!role) {
      return showMsg("Please select a role");
    }

    try {
      setLoading(true);

      setMessage("");

      const response = await login({ email: email.trim(), password: "" });

      const user = response.data;

      saveSession(
        user,
        user.teamId
          ? {
              teamId: user.teamId,
              teamName: user.teamName,
            }
          : null,
      );

      // --TEAM STORAGE

      if (user.role === "TEAM_LEAD" && user.userId) {
        try {
          const teamResponse = await getTeamByLeaderId(user.userId);

          localStorage.setItem("team", JSON.stringify(teamResponse.data));
        } catch {
          if (user.teamId) {
            try {
              const teamResponse = await getTeamMemberTeam(user.userId);

              localStorage.setItem("team", JSON.stringify(teamResponse.data));
            } catch {}
          }
        }
      }

      // --SOURCE ROUTING

      if (source === "addproblem") {
        if (user.role === "ADMIN" || user.role === "EVENT_HEAD") {
          navigate("/add-problem");

          return;
        }

        showMsg("Only ADMIN or EVENT_HEAD can manage problem statements");

        return;
      }

      //-- ROLE ROUTING

      routeByRole(user.role);
    } catch (error) {
      const msg =
        error?.response?.data?.message ||
        error?.response?.data ||
        "Login failed";

      showMsg(typeof msg === "string" ? msg : "Login failed");
    } finally {
      setLoading(false);
    }
  };

  // -- ROUTING

  const routeByRole = (userRole) => {
    const routes = {
      TEAM_MEMBER: "/team-member-dashboard",
      EVALUATOR: "/evaluator",
      JUDGE: "/judge-dashboard",
      MENTOR: "/mentor-dashboard",
      EVENT_HEAD: "/event-head-dashboard",
      ADMIN: "/admin-dashboard",
      COLLEGE_SPOC: "/spoc-dashboard",
    };

    navigate(routes[userRole] || "/dashboard");
  };

  return (
    <div className="login-container-page">
      <h1 className="login-title">Portal Login</h1>

      <div className="login-box">
        {/* -- EMAIL  */}

        <input
          type="text"
          placeholder="Email"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
        />

        {/*--FOR ROLES */}

        <select
          value={role}
          onChange={(e) => setRole(e.target.value)}
        >
          <option value="">Please Select User Role</option>

          <option value="TEAM_LEAD">TEAM_LEAD</option>

          <option value="TEAM_MEMBER">TEAM_MEMBER</option>

          <option value="JUDGE">JUDGE</option>

          <option value="EVALUATOR">EVALUATOR</option>

          <option value="MENTOR">MENTOR</option>

          <option value="EVENT_HEAD">EVENT_HEAD</option>

          <option value="COLLEGE_SPOC">COLLEGE_SPOC</option>

          <option value="ADMIN">ADMIN</option>
        </select>

        {/*-- TO LOGIN */}

        <button
          className="submit-btn"
          onClick={handleLogin}
          disabled={loading}
        >
          {loading ? "Logging in..." : "Login"}
        </button>

        {/* --MESSAGE  */}

        {message && (
          <p
            className={
              messageType === "success" ? "form-success" : "form-error"
            }
          >
            {message}
          </p>
        )}

        {/* --FORGOT PASSWORD  */}

        <button className="forgot" onClick={() => navigate("/forgot-password")}>
          Forgot Your Password?
        </button>

        {/* --REGISTER  */}

        <button
          className="submit-btn"
          style={{
            marginTop: 12,
            background: "#0a6b63",
          }}
          onClick={() => navigate("/register-team-lead")}
        >
          Register as Team Leader
        </button>
      </div>
    </div>
  );
}

export default Login;
