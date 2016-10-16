package co.grandcircus.expITAlumni.dao;

import java.util.List;

import javax.naming.NameNotFoundException;

public interface AnswersDao {


	/**
	 * Get a list that contains every Answer.
	 */
	List<AnswersDao> getAllAnswers();
	
	/**
	 * Get the user with the specified id number.
	 * 
	 * @param id numeric ID of the user
	 * @return the user
	 * @throws NotFoundException if no such user exists
	 */
	//AnswersDao getAnswers(int id) throws NameNotFoundException;
	
	/**
	 *
	 * add  Answers
	 * 
	 */
	int addAnswers(AnswersDao answers);
	
	/**
	 * Update the specified user
	 * 
	 * @param id numeric id identifies the user to update
	 * @param user the new values for the user
	 * @throws NotFoundException if the user does not exist
	 */
	//void updateAnswersDao(int id, AnswersDao answers) throws NameNotFoundException;
	
	/**
	 * Delete the specified answer
	 * 
	 * @param id numeric id identifies the move to delete
	 * @throws NotFoundException if the user does not exist
	 */
	void deleteAnswersDao(int id) throws NameNotFoundException;

	AnswersDao getAnswersDao(int id) throws NameNotFoundException;
	
	
	


	
}
