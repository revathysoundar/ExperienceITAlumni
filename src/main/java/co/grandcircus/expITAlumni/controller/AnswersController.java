package co.grandcircus.expITAlumni.controller;



	import java.util.List;

	import org.slf4j.Logger;
	import org.slf4j.LoggerFactory;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;

import co.grandcircus.expITAlumni.dao.AnswersDao;
import co.grandcircus.expITAlumni.dao.MentorDao;
	import co.grandcircus.expITAlumni.dao.QuestionDao;
import co.grandcircus.expITAlumni.model.Answers;
import co.grandcircus.expITAlumni.model.Mentor;
	import co.grandcircus.expITAlumni.model.Question;

	@Controller
	public class AnswersController {

		
		private static final Logger logger = LoggerFactory.getLogger(AnswersController.class);
		
		@Autowired
		private AnswersDao answersDao;
		
		@RequestMapping("/answers")
		public String listAnswers(Model model) {
			List<Answers> answersList;
			
			answersList = answersDao.getAllAnswers();
				
			model.addAttribute("answers", answerList);
			

			logger.info("/answers -> answers.jsp");
			return "answers";
		}
		
	/*	@RequestMapping(value = "/answers/create", method = RequestMethod.POST)
		public String createAnswers(Answer answer, Model model) {
			answerDao.addAnswer(answer);
			model.asMap().clear();
			
			logger.info("POST /answers/create -> redirect to /answers");
			return "redirect:/answers";
		}
		
		
		@RequestMapping(value = "/answers/create", method = RequestMethod.GET)
		public String createAnswersForm(Model model) {
			model.addAttribute("Answers",new Answers(0,null));
			
			logger.info("GET /answers/create -> answer-create.jsp");
			return "answer-create";
		}
		*/
		
		
	}


}
