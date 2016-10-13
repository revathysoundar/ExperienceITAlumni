package co.grandcircus.expITAlumni.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class AboutUsController {
	private static final Logger logger = LoggerFactory.getLogger(AboutUsController.class);
	
	
	@RequestMapping("/about-us")
	public String  home (Model model ){
		
		//model.addAttribute("about-us")();
		
		
		return "about-us";
	}
	


}
