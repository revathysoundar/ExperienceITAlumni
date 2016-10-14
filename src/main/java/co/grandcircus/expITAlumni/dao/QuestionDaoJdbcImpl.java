package co.grandcircus.expITAlumni.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import co.grandcircus.expITAlumni.model.Mentor;
import co.grandcircus.expITAlumni.model.Question;


@Repository
@Primary
public class QuestionDaoJdbcImpl  implements QuestionDao {

	
	@Autowired
	JdbcConnectionFactory connectionFactory;
	
	
	@Override
	public List<Question> getAllQuestions() {
		String sql = "SELECT * FROM questions";
		try (Connection connection = connectionFactory.getConnection();
				Statement statement = connection.createStatement(); //
				ResultSet result = statement.executeQuery(sql)) {

			List<Question> questionList = new ArrayList<Question>();
			while (result.next()) {
				Integer id = result.getInt("qId");
				String question = result.getString("question");
				questionList.add(new Question(id, question));// adding
																		// users
																		// inlist
																		// of
																		// users
			}

			return questionList;
		} catch (SQLException ex) {
			throw new RuntimeException(ex);
		}
	}

	@Override
	public int addQuestion(Question question) {
		String sql = "INSERT INTO questions (question) VALUES (?)";
		try (Connection connection = connectionFactory.getConnection();
				PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

			statement.setString(1, question.getQuestion());
			

			int affectedRows = statement.executeUpdate();
			if (affectedRows == 0) {
				throw new SQLException("Creating user failed, no rows affected.");
			}

			try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
				if (generatedKeys.next()) {
					question.setqId(generatedKeys.getInt(1));
				} else {
					throw new SQLException("Creating movie failed, no ID obtained.");
				}
			}

			return question.getqId();
		} catch (SQLException ex) {
			throw new RuntimeException(ex);
		}

	}
	
	

}
