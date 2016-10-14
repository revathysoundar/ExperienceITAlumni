package co.grandcircus.expITAlumni.dao;

import java.util.List;

import co.grandcircus.expITAlumni.model.Mentor;
import co.grandcircus.expITAlumni.model.Question;


public interface QuestionDao {

	List<Question> getAllQuestions();
	
	int addQuestion(Question question);
	
	
}
