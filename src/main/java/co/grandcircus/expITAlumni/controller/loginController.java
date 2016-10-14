package co.grandcircus.expITAlumni.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.grandcircus.expITAlumni.controller.loginController;
import co.grandcircus.expITAlumni.Model.Login;

@Controller
public class loginController {
	private static final Logger logger = LoggerFactory.getLogger(loginController.class);
	/*
	 * Display Login Page
	 */
	
	@RequestMapping("/logout")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "redirect:/home";
	
	}
	}
