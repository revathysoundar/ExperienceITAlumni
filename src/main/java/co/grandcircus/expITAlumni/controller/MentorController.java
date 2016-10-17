package co.grandcircus.expITAlumni.controller;

import java.util.List;

import javax.naming.NameNotFoundException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import co.grandcircus.expITAlumni.dao.MentorDao;
import co.grandcircus.expITAlumni.model.Mentor;



@Controller
public class MentorController {
	
	
	/**
	 * Handles requests for pages related to mentors
	 */
	

		
		private static final Logger logger = LoggerFactory.getLogger(MentorController.class);
		
		@Autowired
		private MentorDao mentorDao;
		/**
		 * List all mentors
		 */
		@RequestMapping("/mentors")
		public String listMentors(Model model) {
			List<Mentor> mentors;
			
			mentors = mentorDao.getAllMentors();
				
			model.addAttribute("mentors", mentors);
			

			logger.info("/mentors -> mentor-list.jsp");
			return "mentor-list";
		}

		
		
		
		
		// Display one Mentor
		
		@RequestMapping(value = "/mentors/{id}", method = RequestMethod.GET)
		public String displayUser(@PathVariable int id, Model model) {
			model.addAttribute("id", id);
			try {
				model.addAttribute("mentor", mentorDao.getMentor(id));
			} catch (NameNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			logger.info("GET /mentors/" + id + " -> mentor.jsp");
			return "mentor";
		}
		
		
		 // Save one Mentor
		 
		@RequestMapping(value = "/mentors/{id}", method = RequestMethod.POST)
		public String saveMentor(@PathVariable int id, Mentor mentor, Model model) {
		//	mentorDao.updateMentor(id, mentor);
			model.addAttribute("id", id);
			model.addAttribute("user", mentor);
			
			logger.info("POST /mentors/" + id + " -> mentor.jsp");
			return "mentor";
		}
		
		// Delete one user
		 
	@RequestMapping(value = "/mentors/{id}/delete", method = RequestMethod.POST)
		public String deleteMentor(@PathVariable int id, Model model) {
			try {
				mentorDao.deleteMentor(id);
			} catch (NameNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			model.asMap().clear();
			
			logger.info("POST /mentors/" + id + "/delete -> redirect to /mentors");
			return "redirect:/mentors";
		}
		
		
		 // Display one mentor
		 
		@RequestMapping(value = "/mentors/create", method = RequestMethod.GET)
		public String createMentorForm(Model model) {
			model.addAttribute("mentor",new Mentor(null, null, null, null));
			
			logger.info("GET /mentors/create -> mentor-create.jsp");
			return "mentor-create";
		}
		
		// Save new user
		
		@RequestMapping(value = "/mentors/create", method = RequestMethod.POST)
		public String createMentor(Mentor mentor, Model model) {
			mentorDao.addMentor(mentor);
			model.asMap().clear();
			
			logger.info("POST /mentors/create -> redirect to /mentors");
			return "redirect:/mentors";
		}
		
	} 

	
	
	
	
	
	

 
