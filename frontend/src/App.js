import {
  BrowserRouter as Router,
  Routes,
  Route,
} from "react-router-dom";

import Header from "./components/layout/Header";
import Footer from "./components/layout/Footer";

import Judge from "./pages/Judge";
import Evaluate from "./pages/Evaluate";
import Home from "./pages/Home";
import Login from "./pages/Login";
import ForgotPassword from "./pages/ForgotPassword";
import RegisterTeamLeader from "./pages/RegisterTeamLeader";

import ProblemStatement from "./pages/ProblemStatements";
import ProblemDetails from "./pages/ProblemDetails";
import ProblemAnalysis from "./pages/ProblemAnalysis";

import Application from "./pages/Application";
import Confirmation from "./pages/confirmation";

import JudgeDashboard from "./pages/JudgeDashboard";
import JudgeReport from "./pages/JudgeReport";
import EvaluatorDashboard from "./pages/EvaluatorDashboard";
import EvaluationReport from "./pages/EvaluationReport";
import AddProblem from "./pages/AddProblem";
import AdminDashboard from "./pages/AdminDashboard";

import Dashboard from "./pages/Dashboard";
import CreateTeam from "./pages/CreateTeam";
import MyApplications from "./pages/MyApplications";
import Profile from "./pages/Profile";
import Leaderboard from "./pages/Leaderboard";
import RoleDashboard from "./pages/RoleDashboard";

import AboutSection from "./sections/AboutSection";
import GuidelinesSection from "./sections/GuidelinesSection";
import FAQSection from "./sections/FAQSection";
import ContactSection from "./sections/ContactSection";

//PROTECTED ROUTE

function ProtectedRoute({ children }) {
  // Authentication check bypassed
  return children;
}

function App() {
  return (
    <Router>
      <Header />

      <main>
        <Routes>
          {/*--HOME */}

          <Route path="/" element={<Home />} />

          {/*-- AUTH*/}

          <Route path="/login" element={<Login />} />

          <Route path="/forgot-password" element={<ForgotPassword />} />

          <Route path="/register-team-lead" element={<RegisterTeamLeader />} />

          {/*--DASHBOARD*/}

          <Route
            path="/dashboard"
            element={
              <ProtectedRoute>
                <Dashboard />
              </ProtectedRoute>
            }
          />

          <Route
            path="/team-member-dashboard"
            element={
              <ProtectedRoute>
                <RoleDashboard role="TEAM_MEMBER" />
              </ProtectedRoute>
            }
          />

          <Route
            path="/mentor-dashboard"
            element={
              <ProtectedRoute>
                <RoleDashboard role="MENTOR" />
              </ProtectedRoute>
            }
          />

          <Route
            path="/event-head-dashboard"
            element={
              <ProtectedRoute>
                <RoleDashboard role="EVENT_HEAD" />
              </ProtectedRoute>
            }
          />

          <Route
            path="/admin-dashboard"
            element={
              <ProtectedRoute>
                <AdminDashboard />
              </ProtectedRoute>
            }
          />

          <Route
            path="/spoc-dashboard"
            element={
              <ProtectedRoute>
                <RoleDashboard role="COLLEGE_SPOC" />
              </ProtectedRoute>
            }
          />

          {/*--INFO*/}

          <Route path="/about" element={<AboutSection />} />

          <Route path="/guidelines" element={<GuidelinesSection />} />

          <Route path="/faqs" element={<FAQSection />} />

          <Route path="/contact" element={<ContactSection />} />

          {/*--PROBLEMS */}

          <Route path="/problems" element={<ProblemStatement />} />

          <Route path="/problems/:id" element={<ProblemDetails />} />

          <Route path="/problem-analysis" element={<ProblemAnalysis />} />

          {/*--APPLICATION*/}

          <Route
            path="/apply/:id"
            element={
              <ProtectedRoute>
                <Application />
              </ProtectedRoute>
            }
          />

          <Route
            path="/confirmation"
            element={
              <ProtectedRoute>
                <Confirmation />
              </ProtectedRoute>
            }
          />

          {/*--TEAM*/}

          <Route
            path="/create-team"
            element={
              <ProtectedRoute>
                <CreateTeam />
              </ProtectedRoute>
            }
          />

          {/*--MY APPLICATIONS */}

          <Route
            path="/my-applications"
            element={
              <ProtectedRoute>
                <MyApplications />
              </ProtectedRoute>
            }
          />

          {/*--JUDGE  */}

          <Route
            path="/judge-dashboard"
            element={<JudgeDashboard />}
          />

          <Route
            path="/judge/:id"
            element={<Judge />}
          />

          <Route
            path="/feedback/:id"
            element={<Judge />}
          />

          <Route
            path="/judge/report/:id"
            element={<JudgeReport />}
          />

          {/* --EVALUATOR  */}

          <Route
            path="/evaluator"
            element={<EvaluatorDashboard />}
          />

          <Route
            path="/evaluate/:id"
            element={<Evaluate />}
          />

          <Route
            path="/evaluation-report/:id"
            element={<EvaluationReport />}
          />

          {/*--PROFILE*/}

          <Route
            path="/profile"
            element={
              <ProtectedRoute>
                <Profile />
              </ProtectedRoute>
            }
          />

          <Route
            path="/leaderboard"
            element={
              <ProtectedRoute>
                <Leaderboard />
              </ProtectedRoute>
            }
          />

          {/* --TO ADD PROBLEM */}

          <Route
            path="/add-problem"
            element={
              <ProtectedRoute>
                <AddProblem />
              </ProtectedRoute>
            }
          />
        </Routes>
      </main>

      <Footer />
    </Router>
  );
}

export default App;
