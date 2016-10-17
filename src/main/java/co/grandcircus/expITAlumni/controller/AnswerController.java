package co.grandcircus.expITAlumni.controller;




import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import co.grandcircus.expITAlumni.dao.AnswerDao;
import co.grandcircus.expITAlumni.exception.NotFoundException;



@Controller
public class AnswerController {
	
private static final Logger logger = LoggerFactory.getLogger(QuestionController.class);
	
	@Autowired
	private AnswerDao answerDao;
	
	@RequestMapping(value = "/answers/add/", method = RequestMethod.POST)
	public String addQuestion(Model model,
								@RequestParam(value="qid")Integer id,
							  @RequestParam(value="answer")String answer) {
		System.out.println(answer);
		System.out.println(id);
		answerDao.addAnswer(id,answer);
		
		model.addAttribute("answer",answer);
		model.asMap().clear();
		String page="redirect:/questions/";
		page += id;
		logger.info("POST /answers/add -> redirect to /question-answer");
		return page;
	}
	
	

}
