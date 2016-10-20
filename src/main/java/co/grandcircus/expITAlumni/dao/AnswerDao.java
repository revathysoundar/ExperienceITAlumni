package co.grandcircus.expITAlumni.dao;

import java.util.List;

import co.grandcircus.expITAlumni.model.Answer;

public interface AnswerDao {

	List<Answer> getAnswerById(int qid);

	Integer addAnswer(Integer qid, String answer, String aOwner, String date);

}
