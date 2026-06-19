package com.sih.backend.controller;

import com.sih.backend.dto.AuthResponse;
import com.sih.backend.dto.ForgotPasswordRequest;
import com.sih.backend.dto.LoginRequest;
import com.sih.backend.dto.TeamLeaderRegistrationRequest;
import com.sih.backend.service.AuthService;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/api/auth")
@CrossOrigin(origins = "*")
public class AuthController {

    private final AuthService authService;

    public AuthController(AuthService authService) {
        this.authService = authService;
    }

    // REGISTER 

    @PostMapping("/send-register-otp")
    public ResponseEntity<String> sendRegisterOtp(@RequestBody Map<String, String> request) {
        return ResponseEntity.ok(
                authService.sendRegisterOtp(request.get("email"))
        );
    }

    @PostMapping("/verify-register-otp")
    public ResponseEntity<AuthResponse> verifyRegisterOtp(
            @RequestBody Map<String, String> request
    ) {
        return ResponseEntity.status(HttpStatus.CREATED).body(
                authService.verifyRegisterOtp(
                        request.get("email"),
                        request.get("otp")
                )
        );
    }

    @PostMapping("/register/team-lead")
    public ResponseEntity<AuthResponse> registerTeamLeader(
            @RequestBody TeamLeaderRegistrationRequest request
    ) {
        return ResponseEntity.status(HttpStatus.CREATED)
                .body(authService.registerTeamLeader(request));
    }

    // LOGIN

    @PostMapping("/send-login-otp")
    public ResponseEntity<String> sendLoginOtp(@RequestBody Map<String, String> request) {
        return ResponseEntity.ok(
                authService.sendLoginOtp(request.get("email"))
        );
    }

    @PostMapping("/verify-login-otp")
    public ResponseEntity<AuthResponse> verifyLoginOtp(
            @RequestBody Map<String, String> request
    ) {
        return ResponseEntity.ok(
                authService.verifyLoginOtp(
                        request.get("email"),
                        request.get("otp"),
                        request.get("role")
                )
        );
    }

    @PostMapping("/login")
    public AuthResponse login(@RequestBody LoginRequest request) {
        return authService.login(request);
    }

    // FORGOT PASSWORD 

    @PostMapping("/forgot-password")
    public ResponseEntity<String> forgotPassword(
            @RequestBody ForgotPasswordRequest request
    ) {
        return ResponseEntity.ok(authService.forgotPassword(request));
    }
}