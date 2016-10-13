package co.grandcircus.expITAlumni.dao;

import java.util.List;

import javax.naming.NameNotFoundException;

import co.grandcircus.expITAlumni.model.Mentor;




public interface MentorDao {
	
	
	/**
	 * Get a list that contains every Mentor.
	 */
	List<Mentor> getAllMentors();
	
	/**
	 * Get the user with the specified id number.
	 * 
	 * @param id numeric ID of the user
	 * @return the user
	 * @throws NotFoundException if no such user exists
	 */
	//Mentor getMentor(int id) throws NameNotFoundException;
	
	/**
	 *
	 * add  Mentor
	 * 
	 */
	int addMentor(Mentor mentor);
	
	/**
	 * Update the specified user
	 * 
	 * @param id numeric id identifies the user to update
	 * @param user the new values for the user
	 * @throws NotFoundException if the user does not exist
	 */
	//void updateMentor(int id, Mentor mentor) throws NameNotFoundException;
	
	/**
	 * Delete the specified mentor
	 * 
	 * @param id numeric id identifies the move to delete
	 * @throws NotFoundException if the user does not exist
	 */
	void deleteMentor(int id) throws NameNotFoundException;

	Mentor getMentor(int id) throws NameNotFoundException;
	

}
	


