package co.grandcircus.expITAlumni.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import co.grandcircus.expITAlumni.controller.SlackController;
import co.grandcircus.expITAlumni.exception.NotFoundException;
import co.grandcircus.expITAlumni.model.Login;
import co.grandcircus.expITAlumni.rest.SlackService;

@Controller

public class SlackController {
	private static final Logger logger = LoggerFactory.getLogger(SlackController.class);
	
	@Autowired
	private SlackService slackService;
	
	
	@RequestMapping(value = "/slack", method = RequestMethod.GET)
	public String getAuthorization(@RequestParam(value="code")String code,
			Model model, HttpSession session) {
		
		Login clogin = slackService.getAccessTokenAt(code);
		
		try{
			
			session.setAttribute("currentLogin", clogin);
			
		}catch(NotFoundException ex)
		{
			model.addAttribute("message","Incorrect email or password");
			return "/home";
		}
		if(clogin.getName().equals("null"))
			return "/home";
		else
			return "/index";
}
	
	
	

}
