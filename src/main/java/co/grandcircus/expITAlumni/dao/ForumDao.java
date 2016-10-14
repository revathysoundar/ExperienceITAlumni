package co.grandcircus.expITAlumni.dao;

import java.util.List;

import javax.naming.NameNotFoundException;

import co.grandcircus.expITAlumni.model.Forum;
import co.grandcircus.expITAlumni.model.Mentor;

public interface ForumDao {
	
	
	/**
	 * Get a list that contains each question.
	 */
	List<Forum> getAllQuestions();
	
	/**
	 * Get the question with the specified id number.
	 * 
	 * @param id numeric ID of the question
	 * @return the user
	 * @throws NotFoundException if no such user exists
	 */
	Forum getForum(int id) throws NameNotFoundException;
	
	
	
	 Integer getQ_id() ;
		
	
	 void setQ_id(Integer q_id);
	 
	 
	 String getQuestion();
	 
	 void setQuestion(String question);
	 
	Integer getA_id();
	
	void setA_id(Integer a_id);
	
	String getAnswer();
	
	 void setAnswer(String answer);
	


}
