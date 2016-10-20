package co.grandcircus.expITAlumni.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import co.grandcircus.expITAlumni.model.Answer;

import co.grandcircus.expITAlumni.dao.JdbcConnectionFactory;

import co.grandcircus.expITAlumni.exception.NotFoundException;

@Repository
@Primary

public class AnswerDaoJdbcImpl implements AnswerDao {
	private static final Logger logger = LoggerFactory.getLogger(AnswerDao.class);

	@Autowired
	JdbcConnectionFactory connectionFactory;

	@Override
	public List<Answer> getAnswerById(int qid) throws NotFoundException {

		String sql = "SELECT * FROM answers WHERE qid = ?";
		try (Connection connection = connectionFactory.getConnection();
				PreparedStatement statement = connection.prepareStatement(sql)) {
			statement.setInt(1, qid);
			ResultSet result = statement.executeQuery();
			List<Answer> answerList = new ArrayList<Answer>();
			while (result.next()) {
				Integer qId = result.getInt("qid");
				Integer aid = result.getInt("aid");
				String answer = result.getString("answer");
				String aOwner = result.getString("answerOwner");
				String date = result.getString("date");
				answerList.add(new Answer(qId, aid, answer, aOwner, date));

			}

			for (Answer a : answerList) {
				System.out.println(a.getaId());
				System.out.println(a.getqId());

			}
			return answerList;
		} catch (SQLException ex) {
			throw new RuntimeException(ex);
		}
	}

	@Override
	public Integer addAnswer(Integer qid, String answer, String aOwner, String date) {

		Answer answers = new Answer();
		answers.setAnswer(answer);
		answers.setAnswerOwner(aOwner);
		answers.setDate(date);
		answers.setqId(qid);
		System.out.println(answers.getAnswer());
		System.out.println(answers.getqId());
		String sql = "INSERT INTO answers (qid,answer,answerOwner,date) VALUES (?,?,?,?)";
		try (Connection connection = connectionFactory.getConnection();
				PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
			statement.setInt(1, answers.getqId());
			statement.setString(2, answers.getAnswer());
			statement.setString(3, answers.getAnswerOwner());
			statement.setString(4, answers.getDate());

			System.out.println(answers.getAnswer());

			int affectedRows = statement.executeUpdate();
			System.out.println(answers.getAnswer());
			if (affectedRows == 0) {
				throw new SQLException("Creating answers failed, no rows affected.");
			}

			try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
				if (generatedKeys.next()) {
					answers.setaId(generatedKeys.getInt(1));
				} else {
					throw new SQLException("Creating answer failed, no ID obtained.");
				}
			}

			return answers.getqId();
		} catch (SQLException ex) {
			throw new RuntimeException(ex);
		}

	}

}
