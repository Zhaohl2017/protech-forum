package com.protech.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

	/**
	 * New: 25/7/2024
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String displayLoginPage(Model model, HttpServletRequest request) {
		model.addAttribute("title", "User Login");
        request.getSession().setAttribute("MY_SESSION_LOGIN", "0");
		request.getSession().setAttribute("MY_SESSION_USER", null);
		return "forum/user-login";
	}

}
