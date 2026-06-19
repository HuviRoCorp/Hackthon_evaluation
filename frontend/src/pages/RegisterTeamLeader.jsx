import { useState } from "react";
import { useNavigate } from "react-router-dom";
import {
  registerTeamLeader,
} from "../services/api";
import { saveSession } from "../utils/session";
import "./login.css";

function RegisterTeamLeader() {
  const navigate = useNavigate();

  const [form, setForm] = useState({
    name: "",
    email: "",
    phone: "",
    password: "",
    confirmPassword: "",
    teamName: "",
    collegeId: "",
  });

  const [loading, setLoading] = useState(false);

  const [message, setMessage] = useState("");
  const [messageType, setMessageType] = useState("error");

  const updateField = (field, value) => {
    setForm((prev) => ({ ...prev, [field]: value }));
  };

  const showMsg = (text, type = "error") => {
    setMessage(text);
    setMessageType(type);
  };

  // REGISTER

  const handleRegister = async () => {
    if (!form.name.trim()) return showMsg("Name is required");

    if (!form.email.trim()) return showMsg("Email is required");

    if (!form.phone.trim()) return showMsg("Phone is required");

    if (!form.password.trim()) return showMsg("Password is required");

    if (form.password !== form.confirmPassword) {
      return showMsg("Passwords do not match");
    }

    try {
      setLoading(true);
      setMessage("");

      const response = await registerTeamLeader(form);

      saveSession(response.data);

      localStorage.setItem("pendingTeamName", form.teamName);

      showMsg("Registration successful!", "success");

      setTimeout(() => {
        navigate("/create-team");
      }, 1000);
    } catch (error) {
      const msg =
        error?.response?.data?.message ||
        error?.response?.data ||
        "Registration failed";

      showMsg(typeof msg === "string" ? msg : "Registration failed");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="login-container-page">
      <h1 className="login-title">Team Leader Registration</h1>

      <div className="login-box">
        {/* --FORMS*/}

        <input
          placeholder="Team Leader Name"
          value={form.name}
          onChange={(e) => updateField("name", e.target.value)}
        />

        <input
          type="email"
          placeholder="Email"
          value={form.email}
          onChange={(e) => updateField("email", e.target.value)}
        />

        <input
          placeholder="Phone"
          value={form.phone}
          onChange={(e) => updateField("phone", e.target.value)}
        />

        <input
          type="password"
          placeholder="Password"
          value={form.password}
          onChange={(e) => updateField("password", e.target.value)}
        />

        <input
          type="password"
          placeholder="Confirm Password"
          value={form.confirmPassword}
          onChange={(e) => updateField("confirmPassword", e.target.value)}
        />

        <input
          placeholder="Team Name"
          value={form.teamName}
          onChange={(e) => updateField("teamName", e.target.value)}
        />

        <input
          placeholder="College ID (optional)"
          value={form.collegeId}
          onChange={(e) => updateField("collegeId", e.target.value)}
        />

        {/* --FINAL REGISTER --*/}

        <button
          className="submit-btn"
          onClick={handleRegister}
          disabled={loading}
        >
          {loading ? "Creating Account..." : "Complete Registration"}
        </button>

        {/* -- MESSAGE--*/}

        {message && (
          <p
            className={
              messageType === "success" ? "form-success" : "form-error"
            }
          >
            {message}
          </p>
        )}

        {/* -- LOGIN REDIRECT --*/}

        <button className="forgot" onClick={() => navigate("/login")}>
          Already registered? Login
        </button>
      </div>
    </div>
  );
}

export default RegisterTeamLeader;
