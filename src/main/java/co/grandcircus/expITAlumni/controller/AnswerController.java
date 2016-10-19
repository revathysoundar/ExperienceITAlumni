package co.grandcircus.expITAlumni.controller;




import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

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
import co.grandcircus.expITAlumni.model.Login;



@Controller
public class AnswerController {
	
private static final Logger logger = LoggerFactory.getLogger(QuestionController.class);
	
	@Autowired
	private AnswerDao answerDao;
	
	@RequestMapping(value = "/answers/add/", method = RequestMethod.POST)
	public String addQuestion(Model model,
								@RequestParam(value="qid")Integer id,
							  @RequestParam(value="answer")String answer, HttpSession session) {
		System.out.println(answer);
		System.out.println(id);
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		Date date = new Date();
		
		Login logDetail = (Login) session.getAttribute("currentLogin");
		String aOwner = logDetail.getName();
		
		System.out.println(aOwner);
		String sysDate = dateFormat.format(date);
		answerDao.addAnswer(id,answer,aOwner,sysDate);
		
		model.addAttribute("answer",answer);
		model.asMap().clear();
		String page="redirect:/questions/";
		page += id;
		logger.info("POST /answers/add -> redirect to /question-answer");
		return page;
	}
	
	

}
