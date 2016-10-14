package co.grandcircus.expITAlumni.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.grandcircus.expITAlumni.controller.loginController;
import co.grandcircus.expITAlumni.model.Login;

@Controller
public class loginController {
	private static final Logger logger = LoggerFactory.getLogger(loginController.class);
	/*
	 * Display Login Page
	 */
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm(Model model) {
		model.addAttribute("login", new Login());
		
		logger.info("GET /login -> login.jsp");
		return "login";
	}
	

}