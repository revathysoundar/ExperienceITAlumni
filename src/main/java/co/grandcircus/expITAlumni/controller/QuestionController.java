package co.grandcircus.expITAlumni.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.grandcircus.expITAlumni.dao.MentorDao;
import co.grandcircus.expITAlumni.dao.QuestionDao;
import co.grandcircus.expITAlumni.model.Mentor;
import co.grandcircus.expITAlumni.model.Question;

@Controller
public class QuestionController {

	
	private static final Logger logger = LoggerFactory.getLogger(MentorController.class);
	
	@Autowired
	private QuestionDao questionDao;
	
	@RequestMapping("/questions")
	public String listQuestions(Model model) {
		List<Question> questionList;
		
		questionList = questionDao.getAllQuestions();
			
		model.addAttribute("questions", questionList);
		

		logger.info("/mentors -> question.jsp");
		return "question";
	}
	
/*	@RequestMapping(value = "/questions/create", method = RequestMethod.POST)
	public String createMentor(Question question, Model model) {
		questionDao.addQuestion(question);
		model.asMap().clear();
		
		logger.info("POST /mentors/create -> redirect to /mentors");
		return "redirect:/questions";
	}
	
	
	@RequestMapping(value = "/questions/create", method = RequestMethod.GET)
	public String createMentorForm(Model model) {
		model.addAttribute("Question",new Question(0,null));
		
		logger.info("GET /mentors/create -> question-create.jsp");
		return "question-create";
	}
	*/
	
	
}
