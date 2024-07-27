package com.protech.web.controller;

import java.util.Map;

import javax.validation.Valid;

// import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.protech.exception.BadRequestException;
import com.protech.exception.ResourceNotFoundException;
import com.protech.persistence.model.User;
import com.protech.service.PostService;
import com.protech.service.UserService;
import com.protech.util.NewUserFormValidator;
import com.protech.web.dto.PostDto;
import com.protech.web.dto.UserDto;
import com.protech.web.dto.UserLoginDto;
import com.protech.web.dto.UserRegistrationDto;
import com.protech.web.dto.UserSettingsDto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private UserService userService;

	@Autowired
	private NewUserFormValidator userValidator;

	@Autowired
	private PostService postService;

	@RequestMapping(value = "/user/{userId}", method = RequestMethod.GET)
	public String showUserProfilePage(@RequestParam(value = "tab", required = false) String tabType,
			@PathVariable Long userId, Model model) {
		if (null == userId) {
			throw new BadRequestException("Path variable userId cound not be null.");
		}
		Map<String, Object> attributes = this.userService.getUserProfileAndPostsByUserIdByTabType(userId, tabType);
		if (null == attributes) {
			throw new ResourceNotFoundException("attributes not found.");
		}
		model.addAllAttributes(attributes);
		return "forum/user-profile";
	}

	@RequestMapping(value = "/user/registration", method = RequestMethod.GET)
	public String showRegistrationPage(Model model) {
		model.addAttribute("userDto", new UserRegistrationDto());
		return "forum/user-registration";
	}

	@RequestMapping(value = "/user/registration", method = RequestMethod.POST)
	public String registerNewUser(@Valid @ModelAttribute("userDto") UserRegistrationDto userDto,
			BindingResult bindingResult, Model model, HttpServletRequest request) {
		/*
		 * form validation, check username and email uniqueness
		 */
		this.userValidator.validate(userDto, bindingResult);
		if (bindingResult.hasErrors()) {
			logger.info("BindingResult has errors >> " + bindingResult.getFieldError());
			return "forum/user-registration";
		}
		Map<String, Object> attributes = this.userService.registerUserAccount(userDto, request);
		if (null == attributes) {
			throw new ResourceNotFoundException("attributes not found.");
		}
		model.addAllAttributes(attributes);
		return "forum/user-registration-result";
	}

	@RequestMapping(value = "/user/login", method = RequestMethod.GET)
	public String displayLoginPage(Model model) {
		model.addAttribute("title", "User Login");
		return "forum/user-login";
	}

	@RequestMapping(value = "/user/login-success", method = RequestMethod.GET)
	public String showAdminPage() {
		return "forum/user-login";
	}

	@RequestMapping(value = "/user/registration-confirm", method = RequestMethod.GET)
	public String confirmRegistration(@RequestParam("token") String token, Model model) {
		if (null == token || token.equals("")) {
			throw new BadRequestException("Invalid user registration confirmation token.");
		}
		Map<String, Object> attributes = this.userService.confirmUserRegistrationWithToken(token);
		if (null == attributes) {
			throw new ResourceNotFoundException("attributes not found.");
		}
		model.addAllAttributes(attributes);
		return "forum/user-registration-confirm";
	}

	@RequestMapping(value = "/user/settings", method = RequestMethod.GET)
	public String showUserSettingsPage(Model model, HttpSession session) {
		// Modified on 26/7/2024
		//Map<String, Object> attributes = this.userService.getUserSettingPage();
		Map<String, Object> attributes = this.userService.getUserSettingPage(session);
		if (null == attributes) {
			throw new ResourceNotFoundException("attributes not found.");
		}
		model.addAllAttributes(attributes);
		// To add login info
		String isLoggedIn = (String) session.getAttribute("MY_SESSION_LOGIN");
		model.addAttribute("isLoggedIn", isLoggedIn);
		return "forum/user-settings";
	}

	@RequestMapping(value = "/user/settings", method = RequestMethod.POST)
	public String handleFileUpload(@ModelAttribute("userSettingsDto") UserSettingsDto userSettingsDto, Model model, HttpSession session) {
		if (null == userSettingsDto) {
			throw new BadRequestException("UserSettingsDto cound not be null.");
		}
		// Modified on 26/7/2024
		// Map<String, Object> attributes = this.userService.updateUserProfile(userSettingsDto);
		Map<String, Object> attributes = this.userService.updateUserProfile(userSettingsDto, session);
		if (null == attributes) {
			throw new ResourceNotFoundException("attributes not found.");
		}
		model.addAllAttributes(attributes);
		return "forum/user-settings";
	}

	/**
	 * New: 25/7/2024
	 */
	@RequestMapping(value = "/user/login/validate", method = RequestMethod.POST)
	public String handleLoginPage(Model model, 
			@RequestParam(value = "p", required = false, defaultValue="1") Integer pageNum,
			@RequestParam(value = "size", required = false, defaultValue="10") Integer pageSize,
			@Valid @ModelAttribute("userDto") UserLoginDto userDto,
			@Valid @ModelAttribute("newPostForm") PostDto newPostForm,
			@Valid @ModelAttribute("userForm") UserDto userForm,
			HttpServletRequest request) {
		Map<String, Object> attributes = this.postService.findPostsByPage(pageNum, pageSize);
		model.addAllAttributes(attributes);

		String username = userDto.getUsername();
		User user = this.userService.findByUsername(username);
		if (null == user) {
			return "error/405";
		}
		/* user = this.userService.findAuthenticatedUser();
		if (null == user) {
			return "error/403";
		} */
		String roles = user.getRoles();
		model.addAttribute("roles", roles);
		model.addAttribute("isLoggedIn", "1");
		model.addAttribute("user", user);
		request.getSession().setAttribute("MY_SESSION_LOGIN", "1");
		request.getSession().setAttribute("MY_SESSION_USER", user);
		if (roles.contains("ADMIN")) {
			model.addAttribute("isAdmin", "1");
			model.addAttribute("activeTab", "posts");
			return "forum/dashboard";
		} else {
			model.addAttribute("pageType", "homePage");
			return "forum/home";
		}
	}

}
