package co.grandcircus.expITAlumni.dao;

import java.util.List;


import co.grandcircus.expITAlumni.model.Question;
import co.grandcircus.expITAlumni.exception.NotFoundException;



public interface QuestionDao {

	List<Question> getAllQuestions();
	
	int addQuestion(String question);
	
	Question getQuestion(int id) throws NotFoundException;
	
	
}
