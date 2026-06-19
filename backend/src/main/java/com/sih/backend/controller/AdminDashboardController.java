package com.sih.backend.controller;

import com.sih.backend.model.Notification;
import com.sih.backend.model.User;
import com.sih.backend.repository.NotificationRepository;
import com.sih.backend.repository.ProblemStatementRepository;
import com.sih.backend.repository.TeamRepository;
import com.sih.backend.repository.UserRepository;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/admin-dashboard")
@CrossOrigin(origins = "*")
public class AdminDashboardController {

    private final ProblemStatementRepository problemStatementRepository;
    private final TeamRepository teamRepository;
    private final UserRepository userRepository;
    private final NotificationRepository notificationRepository;

    public AdminDashboardController(
            ProblemStatementRepository problemStatementRepository,
            TeamRepository teamRepository,
            UserRepository userRepository,
            NotificationRepository notificationRepository) {
        this.problemStatementRepository = problemStatementRepository;
        this.teamRepository = teamRepository;
        this.userRepository = userRepository;
        this.notificationRepository = notificationRepository;
    }

    @GetMapping
    public Map<String, Object> getDashboard() {
        List<User> judges = userRepository.findByRoleNameIgnoreCase("JUDGE");
        List<User> evaluators = userRepository.findByRoleNameIgnoreCase("EVALUATOR");
        List<Notification> activities = notificationRepository.findAll().stream()
                .sorted(Comparator.comparing(Notification::getTimestamp, Comparator.nullsLast(Comparator.naturalOrder())).reversed())
                .limit(8)
                .toList();

        Map<String, Object> response = new LinkedHashMap<>();
        response.put("totalHackathons", problemStatementRepository.count());
        response.put("totalParticipants", userRepository.count());
        response.put("totalTeams", teamRepository.count());
        response.put("pendingJudgeRequests", countByStatus(judges, "PENDING"));
        response.put("pendingEvaluatorRequests", countByStatus(evaluators, "PENDING"));
        response.put("judges", judges.stream().map(this::toUserView).toList());
        response.put("evaluators", evaluators.stream().map(this::toUserView).toList());
        response.put("recentActivities", activities.stream().map(this::toActivityView).toList());
        return response;
    }

    @PutMapping("/users/{id}/status")
    public Map<String, Object> updateUserStatus(@PathVariable Long id, @RequestParam String status) {
        String normalizedStatus = normalizeStatus(status);
        User user = userRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "User not found"));
        user.setAccountStatus(normalizedStatus);
        return toUserView(userRepository.save(user));
    }

    private long countByStatus(List<User> users, String status) {
        return users.stream()
                .filter(user -> status.equalsIgnoreCase(normalizeStatus(user.getAccountStatus())))
                .count();
    }

    private String normalizeStatus(String status) {
        if (status == null || status.isBlank()) {
            return "PENDING";
        }
        String normalized = status.trim().toUpperCase();
        if ("ACTIVE".equals(normalized)) {
            return "APPROVED";
        }
        if (!List.of("PENDING", "APPROVED", "REJECTED", "INVITED").contains(normalized)) {
            return normalized;
        }
        return normalized;
    }

    private Map<String, Object> toUserView(User user) {
        Map<String, Object> view = new LinkedHashMap<>();
        view.put("userId", user.getUserId());
        view.put("fullName", user.getFullName());
        view.put("email", user.getEmail());
        view.put("phoneNumber", user.getPhoneNumber());
        view.put("roleName", user.getRoleName());
        view.put("accountStatus", normalizeStatus(user.getAccountStatus()));
        view.put("createdAt", user.getCreatedAt());
        return view;
    }

    private Map<String, Object> toActivityView(Notification notification) {
        Map<String, Object> view = new LinkedHashMap<>();
        view.put("notificationId", notification.getTimestamp());
        view.put("message", notification.getMessage());
        view.put("type", notification.getType());
        view.put("timestamp", notification.getTimestamp());
        return view;
    }
}
