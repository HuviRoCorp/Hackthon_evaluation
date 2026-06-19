package com.sih.backend.service;

import com.sih.backend.dto.AuthResponse;
import com.sih.backend.dto.ForgotPasswordRequest;
import com.sih.backend.dto.LoginRequest;
import com.sih.backend.dto.TeamLeaderRegistrationRequest;
import com.sih.backend.model.User;
import com.sih.backend.repository.TeamRepository;
import com.sih.backend.repository.UserRepository;

import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;

import java.sql.Timestamp;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;

@Service
public class AuthService {

    private final UserRepository userRepository;
    private final TeamRepository teamRepository;
    private final NotificationService notificationService;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    private static final Pattern EMAIL_PATTERN =
            Pattern.compile("^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$");

    // OTP STORAGE 

    private final Map<String, String> otpStore = new ConcurrentHashMap<>();
    private final Map<String, Long> otpExpiryStore = new ConcurrentHashMap<>();

    public AuthService(
            UserRepository userRepository,
            TeamRepository teamRepository,
            NotificationService notificationService
    ) {
        this.userRepository = userRepository;
        this.teamRepository = teamRepository;
        this.notificationService = notificationService;
    }

    // OTP HELPERS 

    private String generateOtp() {
                return "12345";
    }

    private void saveOtp(String email, String otp) {
        otpStore.put(email, otp);
        otpExpiryStore.put(email, System.currentTimeMillis() + (5 * 60 * 1000));
    }

    private boolean verifyOtpInternal(String email, String otp) {
        if (!otpStore.containsKey(email)) {
            return false;
        }

        long expiry = otpExpiryStore.get(email);

        if (System.currentTimeMillis() > expiry) {
            otpStore.remove(email);
            otpExpiryStore.remove(email);
            return false;
        }

        return otpStore.get(email).equals(otp);
    }

    // REGISTER OTP 

    public String sendRegisterOtp(String email) {

        if (email == null || email.trim().isEmpty()) {
            throw new ResponseStatusException(
                    HttpStatus.BAD_REQUEST,
                    "Email is required"
            );
        }

        email = email.trim().toLowerCase();

        if (userRepository.existsByEmailIgnoreCase(email)) {
            throw new ResponseStatusException(
                    HttpStatus.CONFLICT,
                    "Email already registered"
            );
        }

        String otp = generateOtp();

        saveOtp(email, otp);

        System.out.println("REGISTER OTP for " + email + ": " + otp);

        return "OTP sent successfully";
    }

    public AuthResponse verifyRegisterOtp(String email, String otp) {

        if (!verifyOtpInternal(email, otp)) {
            throw new ResponseStatusException(
                    HttpStatus.BAD_REQUEST,
                    "Invalid or expired OTP"
            );
        }

        otpStore.remove(email);
        otpExpiryStore.remove(email);

        AuthResponse response = new AuthResponse();
        response.setMessage("OTP verified successfully");

        return response;
    }

    //  LOGIN OTP

    public String sendLoginOtp(String email) {

        if (email == null || email.trim().isEmpty()) {
            throw new ResponseStatusException(
                    HttpStatus.BAD_REQUEST,
                    "Email is required"
            );
        }

        User user = userRepository.findByEmailIgnoreCase(email.trim())
                .orElseThrow(() ->
                        new ResponseStatusException(
                                HttpStatus.NOT_FOUND,
                                "Account not found"
                        )
                );

        String otp = generateOtp();

        saveOtp(email, otp);

        System.out.println("LOGIN OTP for " + email + ": " + otp);

        return "OTP sent successfully";
    }

    public AuthResponse verifyLoginOtp(
            String email,
            String otp,
            String role
    ) {

        if (!verifyOtpInternal(email, otp)) {
            throw new ResponseStatusException(
                    HttpStatus.BAD_REQUEST,
                    "Invalid or expired OTP"
            );
        }

        User user = userRepository.findByEmailIgnoreCase(email.trim())
                .orElseThrow(() ->
                        new ResponseStatusException(
                                HttpStatus.NOT_FOUND,
                                "Account not found"
                        )
                );

        if (role != null &&
                user.getRoleName() != null &&
                !user.getRoleName().equalsIgnoreCase(role)) {

            throw new ResponseStatusException(
                    HttpStatus.FORBIDDEN,
                    "Unauthorized role"
            );
        }

        otpStore.remove(email);
        otpExpiryStore.remove(email);

        return toResponse(user);
    }

    // REGISTER

    @Transactional
    public AuthResponse registerTeamLeader(TeamLeaderRegistrationRequest request) {

        validateRegistration(request);

        if (userRepository.existsByEmailIgnoreCase(request.getEmail().trim())) {
            throw new ResponseStatusException(
                    HttpStatus.CONFLICT,
                    "This email is already registered as a Team Leader."
            );
        }

        if (userRepository.existsByPhoneNumberIgnoreCase(request.getPhone().trim())) {
            throw new ResponseStatusException(
                    HttpStatus.CONFLICT,
                    "This phone number is already registered."
            );
        }

        User user = new User();

        user.setFullName(request.getName().trim());
        user.setEmail(request.getEmail().trim().toLowerCase());
        user.setPhoneNumber(request.getPhone().trim());
        user.setPasswordHash(passwordEncoder.encode(request.getPassword()));
        user.setRoleName("TEAM_LEAD");
        user.setCollegeId(request.getCollegeId());
        user.setAccountStatus("ACTIVE");
        user.setCreatedAt(new Timestamp(System.currentTimeMillis()));

        User savedUser = userRepository.save(user);

        return toResponse(savedUser);
    }

    // LOGIN 

    public AuthResponse login(LoginRequest request) {

        if (request.getEmail() == null || request.getEmail().trim().isEmpty()) {
            throw new ResponseStatusException(
                    HttpStatus.BAD_REQUEST,
                    "Email is required"
            );
        }

        User user = userRepository.findByEmailIgnoreCase(request.getEmail().trim())
                .orElseThrow(() ->
                        new ResponseStatusException(
                                HttpStatus.NOT_FOUND,
                                "Account not found"
                        )
                );

        return toResponse(user);
    }

    //RESPONSE

    public AuthResponse toResponse(User user) {

        AuthResponse response = new AuthResponse();

        response.setUserId(user.getUserId());
        response.setName(user.getFullName());
        response.setEmail(user.getEmail());
        response.setPhone(user.getPhoneNumber());
        response.setRole(user.getRoleName());
        response.setCollegeId(user.getCollegeId());

        if (user.getTeam() != null) {
            response.setTeamId(user.getTeam().getTeamId());
            response.setTeamName(user.getTeam().getTeamName());
        }

        return response;
    }

    //  FORGOT PASSWORD

    @Transactional
    public String forgotPassword(ForgotPasswordRequest request) {

        if (request == null
                || request.getEmail() == null || request.getEmail().trim().isEmpty()
                || request.getCurrentPassword() == null || request.getCurrentPassword().trim().isEmpty()
                || request.getNewPassword() == null || request.getNewPassword().trim().isEmpty()
                || request.getConfirmNewPassword() == null || request.getConfirmNewPassword().trim().isEmpty()) {

            throw new ResponseStatusException(
                    HttpStatus.BAD_REQUEST,
                    "All fields are required"
            );
        }

        String email = request.getEmail().trim().toLowerCase();

        User user = userRepository.findByEmailIgnoreCase(email)
                .orElseThrow(() ->
                        new ResponseStatusException(
                                HttpStatus.UNAUTHORIZED,
                                "Invalid email"
                        )
                );

        if (!passwordEncoder.matches(request.getCurrentPassword(), user.getPasswordHash())) {
            throw new ResponseStatusException(
                    HttpStatus.UNAUTHORIZED,
                    "Current password is incorrect"
            );
        }

        if (!request.getNewPassword().equals(request.getConfirmNewPassword())) {
            throw new ResponseStatusException(
                    HttpStatus.BAD_REQUEST,
                    "New password confirmation must match"
            );
        }

        user.setPasswordHash(
                passwordEncoder.encode(request.getNewPassword())
        );

        userRepository.save(user);

        notificationService.createNotification(
                user.getUserId(),
                "Password updated successfully."
        );

        return "Password updated successfully";
    }

    // FOR VALIDATION

    private void validateRegistration(TeamLeaderRegistrationRequest request) {

        if (request.getName() == null || request.getName().trim().isEmpty()) {
            throw new ResponseStatusException(
                    HttpStatus.BAD_REQUEST,
                    "Name is required"
            );
        }

        if (request.getEmail() == null || request.getEmail().trim().isEmpty()) {
            throw new ResponseStatusException(
                    HttpStatus.BAD_REQUEST,
                    "Email is required"
            );
        }

        if (request.getPhone() == null || request.getPhone().trim().isEmpty()) {
            throw new ResponseStatusException(
                    HttpStatus.BAD_REQUEST,
                    "Phone is required"
            );
        }

        if (request.getPassword() == null || request.getPassword().trim().isEmpty()) {
            throw new ResponseStatusException(
                    HttpStatus.BAD_REQUEST,
                    "Password is required"
            );
        }

        if (!request.getPassword().equals(request.getConfirmPassword())) {
            throw new ResponseStatusException(
                    HttpStatus.BAD_REQUEST,
                    "Password confirmation must match"
            );
        }
    }
}