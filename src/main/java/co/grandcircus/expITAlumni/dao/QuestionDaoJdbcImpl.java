package co.grandcircus.expITAlumni.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import co.grandcircus.expITAlumni.model.Login;
import co.grandcircus.expITAlumni.model.Question;
import co.grandcircus.expITAlumni.exception.NotFoundException;



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
				String qOwner = result.getString("questionOwner");
				String date = result.getString("date");
				questionList.add(new Question(id, question,qOwner,date));
			}

			return questionList;
		} catch (SQLException ex) {
			throw new RuntimeException(ex);
		}
	}

	@Override
	public int addQuestion(String question,String questionOwner, String date) {
		
		
		Question questions = new Question();
		questions.setQuestion(question);
		questions.setQuestionOwner(questionOwner);
		questions.setDate(date);
		String sql = "INSERT INTO questions (question, questionOwner, date) VALUES (?,?,?)";
		try (Connection connection = connectionFactory.getConnection();
				PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

			statement.setString(1, questions.getQuestion());
			statement.setString(2, questions.getQuestionOwner());
			statement.setString(3, questions.getDate());
			System.out.println(questions.getQuestion());

			int affectedRows = statement.executeUpdate();
			System.out.println(questions.getQuestion());
			if (affectedRows == 0) {
				throw new SQLException("Creating questions failed, no rows affected.");
			}

			try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
				if (generatedKeys.next()) {
					questions.setqId(generatedKeys.getInt(1));
				} else {
					throw new SQLException("Creating question failed, no ID obtained.");
				}
			}

			return questions.getqId();
		} catch (SQLException ex) {
			throw new RuntimeException(ex);
		}

	}
	
	@Override
	public Question getQuestion(int id) throws NotFoundException {
		String sql = "SELECT * FROM questions WHERE qid = ?";
		try (Connection connection = connectionFactory.getConnection();
				PreparedStatement statement = connection.prepareStatement(sql)) {
			statement.setInt(1, id);
			ResultSet result = statement.executeQuery();

			if (result.next()) {
				String question = result.getString("question");
				String qOwner = result.getString("questionOwner");
				String date = result.getString("date");

				return new Question(id, question,qOwner,date);
			} else {
				throw new NotFoundException("No such question.");
			}
		} catch (SQLException ex) {
			throw new RuntimeException(ex);
		}
	}
	
	

}
