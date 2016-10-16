package co.grandcircus.expITAlumni.dao;


	

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Statement;
	import java.util.ArrayList;
	import java.util.List;

import javax.naming.NameNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.context.annotation.Primary;
	import org.springframework.stereotype.Repository;

	


	@Repository
	@Primary
	public class AnswersDaoJdbcImpl  implements AnswersDao {

		
		@Autowired
		JdbcConnectionFactory connectionFactory;
		
		
		@Override
		public List<AnswersDao> getAllAnswers() {
			String sql = "SELECT * FROM answers";
			try (Connection connection = connectionFactory.getConnection();
					Statement statement = connection.createStatement(); //
					ResultSet result = statement.executeQuery(sql)) {

				List<AnswersDao> AnswersList = new ArrayList<AnswersDao>();
				while (result.next()) {
					Integer id = result.getInt("aId");
					String answers = result.getString("answers");
					AnswersList.add(new AnswersDao(id, answers));// adding
																			// users
																			// inlist
																			// of
																			// users
				}

				return AnswersList;
			} catch (SQLException ex) {
				throw new RuntimeException(ex);
			}
		}

		@Override
		public int addAnswers(AnswersDao Answers) {
			String sql = "INSERT INTO answers (answers) VALUES (?)";
			try (Connection connection = connectionFactory.getConnection();
					PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

				statement.setString(1, Answers.getAllAnswers());
				

				int affectedRows = statement.executeUpdate();
				if (affectedRows == 0) {
					throw new SQLException("Creating user failed, no rows affected.");
				}

				try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
					if (generatedKeys.next()) {
						Answers.setaId(generatedKeys.getInt(1));
					} else {
						throw new SQLException("Creating movie failed, no ID obtained.");
					}
				}

				return Answers.getaId();
			} catch (SQLException ex) {
				throw new RuntimeException(ex);
			}

		}

		@Override
		public void deleteAnswersDao(int id) throws NameNotFoundException {
			// TODO Auto-generated method stub
			
		}

		@Override
		public AnswersDao getAnswersDao(int id) throws NameNotFoundException {
			// TODO Auto-generated method stub
			return null;
		}
		
		

	}
	

	
	

