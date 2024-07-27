package com.protech.service;

import java.util.Map;

import com.protech.persistence.model.User;
import com.protech.web.dto.UserRegistrationDto;
import com.protech.web.dto.UserSettingsDto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public interface UserService {

	int save(User user);

	User findById(Long id);

	User findByUsername(String username);

	User findByEmail(String email);

	User findAuthenticatedUser();

	User findLoggedonUser(HttpSession session);

	Map<String, Object> getUserProfileAndPostsByUserIdByTabType(Long userId, String tabType);

	Map<String, Object> updateUserProfile(UserSettingsDto newUserSettingsForm);

	Map<String, Object> updateUserProfile(UserSettingsDto newUserSettingsForm, HttpSession session);

	Map<String, Object> getUserSettingPage(HttpSession session);

	Map<String, Object> registerUserAccount(UserRegistrationDto userDto, HttpServletRequest request);

	Map<String, Object> confirmUserRegistrationWithToken(String token);

	Map<String, Object> findUsers();

}
