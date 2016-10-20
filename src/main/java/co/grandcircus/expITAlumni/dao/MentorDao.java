package co.grandcircus.expITAlumni.dao;

import java.util.List;

import javax.naming.NameNotFoundException;

import co.grandcircus.expITAlumni.exception.NotFoundException;
import co.grandcircus.expITAlumni.model.Mentor;




public interface MentorDao {
	
	
	/**
	 * Get a list that contains every Mentor.
	 */
	List<Mentor> getAllMentors();
	
	/**
	 * Get the mentor with the specified id number.
	 * 
	 * @param id numeric ID of the mentor
	 * @return the mentor
	 * @throws NotFoundException if no such mentor exists
	 */
	//Mentor getMentor(int id) throws NameNotFoundException;
	
	/**
	 *
	 * add  Mentor
	 * 
	 */
	int addMentor(Mentor mentor);
	
	/**
	 * Update the specified mentor
	 * 
	 * @param id numeric id identifies the mentor to update
	 * @param mentor the new values for the mentor
	 * @throws NotFoundException if the mentor does not exist
	 */
	void updateMentor(int id, Mentor mentor) throws NotFoundException;
	
	/**
	 * Delete the specified mentor
	 * 
	 * @param id numeric id identifies the move to delete
	 * @throws NotFoundException if the mentor does not exist
	 */
	void deleteMentor(int id) throws NameNotFoundException;

	Mentor getMentor(int id) throws NameNotFoundException;
	
	
	

}
	


