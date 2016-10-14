package co.grandcircus.expITAlumni.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FAQsController {
	
private static final Logger logger = LoggerFactory.getLogger(FAQsController.class);
	
	
	@RequestMapping("/faqs")
	public String  home (Model model ){
	return "faqs";
	}

}
