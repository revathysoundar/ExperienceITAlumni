package co.grandcircus.expITAlumni.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import co.grandcircus.expITAlumni.dao.AnswerDao;
import co.grandcircus.expITAlumni.dao.QuestionDao;
import co.grandcircus.expITAlumni.model.Question;

@Controller
public class QuestionController {

	
	private static final Logger logger = LoggerFactory.getLogger(QuestionController.class);
	
	@Autowired
	private QuestionDao questionDao;
	
	
	
	
	@RequestMapping("/questions")
	public String listQuestions(Model model) {
		List<Question> questionList;
		
		questionList = questionDao.getAllQuestions();
			
		model.addAttribute("questions", questionList);
		

		logger.info("/questions -> question.jsp");
		return "question";
	}
	
	@RequestMapping(value = "/questions/add", method = RequestMethod.POST)
	public String addQuestion(Model model,@RequestParam(value="question")String question) {
		System.out.println(question);
		questionDao.addQuestion(question);
		model.asMap().clear();
		
		logger.info("POST /questions/add -> redirect to /questions");
		return "redirect:/questions";
	}
	
	@Autowired
	private AnswerDao answerDao;
	
	@RequestMapping(value = "/questions/{id}", method = RequestMethod.GET)
	public String displayQuestion(@PathVariable int id, Model model) {
		model.addAttribute("id", id);
		model.addAttribute("question", questionDao.getQuestion(id));
		model.addAttribute("answer", answerDao.getAnswerById(id));
		logger.info("GET /questions/" + id + " -> question-list.jsp");
		return "question-answer";
	}
	
	
	
}
