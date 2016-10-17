package co.grandcircus.expITAlumni.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ResourcesController {

	@RequestMapping("/resourses")
	public String  home (Model model ){
	return "resourses";
	}

}
