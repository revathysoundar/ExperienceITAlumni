package co.grandcircus.expITAlumni.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NameNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import co.grandcircus.expITAlumni.model.Forum;
import co.grandcircus.expITAlumni.model.Mentor;

@Repository
@Primary
public class ForumDaoJdbcImpl implements ForumDao{
	
	@Autowired
	JdbcConnectionFactory connectionFactory;

	@Override
	public List<Forum> getAllQuestions() {
		String sql = "SELECT * FROM Question";
		try (Connection connection = connectionFactory.getConnection();
				Statement statement = connection.createStatement(); 
				ResultSet result = statement.executeQuery(sql)) {

			List<Forum> questions = new ArrayList<Forum>();
			while (result.next()) {
				Integer q_id = result.getInt("id");
				String question = result.getString("question");
				

				questions.add(new Forum(q_id, question));
			}

			return questions;
		} catch (SQLException ex) {
			throw new RuntimeException(ex);
		}
	}

	@Override
	public Forum getForum(int id) throws NameNotFoundException {
		
		return null;
	}

	@Override
	public Integer getQ_id() {
		
		return null;
	}

	@Override
	public void setQ_id(Integer q_id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getQuestion() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setQuestion(String question) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Integer getA_id() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setA_id(Integer a_id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getAnswer() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setAnswer(String answer) {
		// TODO Auto-generated method stub
		
	}

}
