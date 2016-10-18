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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.grandcircus.expITAlumni.exception.NotFoundException;
import co.grandcircus.expITAlumni.model.Mentor;





@Repository
@Primary
public class MentorDaoJdbcImpl implements MentorDao {

	@Autowired
	JdbcConnectionFactory connectionFactory;

	private List<Mentor> mentors = new ArrayList<Mentor>();

	@Override
	public List<Mentor> getAllMentors() {
		String sql = "SELECT * FROM mentor";
		try (Connection connection = connectionFactory.getConnection();
				Statement statement = connection.createStatement(); //
				ResultSet result = statement.executeQuery(sql)) {

			List<Mentor> mentors = new ArrayList<Mentor>();
			while (result.next()) {
				Integer id = result.getInt("id");
				String firstName = result.getString("firstName");
				String lastName = result.getString("lastName");
				String email = result.getString("email");

				mentors.add(new Mentor(id, firstName, lastName, email));// adding
																		// users
																		// inlist
																		// of
																		// users
			}

			return mentors;
		} catch (SQLException ex) {
			throw new RuntimeException(ex);
		}
	}
		
		@Override 
		public int addMentor(Mentor mentor) {
			String sql = "INSERT INTO mentor (firstName, lastName,email,company,title,yearGraduated,description,available) VALUES (?,?,?,?,?,?,?,?)";
			try (Connection connection = connectionFactory.getConnection();
					PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

				statement.setString(1, mentor.getFirstName());
				statement.setString(2, mentor.getLastName());
				statement.setString(3, mentor.getEmail());
				statement.setString(4, mentor.getCompany());
				statement.setString(5, mentor.getTitle());
				statement.setString(6, mentor.getYearGraduated());
				statement.setString(7, mentor.getDescription());
				statement.setBoolean(8, mentor.isAvailable());

				int affectedRows = statement.executeUpdate();
				if (affectedRows == 0) {
					throw new SQLException("Creating user failed, no rows affected.");
				}

				try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
					if (generatedKeys.next()) {
						mentor.setId(generatedKeys.getInt(1));
					} else {
						throw new SQLException("Creating movie failed, no ID obtained.");
					}
				}

				return mentor.getId();
			} catch (SQLException ex) {
				throw new RuntimeException(ex);
			}

		}
		
		//get user by id 

		@Override
		public Mentor getMentor(int id) throws NameNotFoundException {
			String sql = "SELECT * FROM mentor WHERE id = ?";
			try (Connection connection = connectionFactory.getConnection();
					PreparedStatement statement = connection.prepareStatement(sql)) {
				statement.setInt(1, id);
				ResultSet result = statement.executeQuery();

				if (result.next()) {
					String firstName = result.getString("firstName");
					String lastName = result.getString("lastName");
					String email = result.getString("email");
					String company = result.getString("company");
					String title = result.getString("title");
					String yearGraduated = result.getString("yearGraduated");
					String description = result.getString("description");
					boolean available = result.getBoolean("available");
				

					return new Mentor(id,firstName, lastName, email, company, title, yearGraduated, description, available);
				} else {
					throw new NameNotFoundException("No such user.");
				}
			} catch (SQLException ex) {
				throw new RuntimeException(ex);
			}
		}
		
		
		
		@Override
		public void deleteMentor(int id) throws NameNotFoundException {
			String sql = "DELETE FROM mentor WHERE id = ?";
			try (Connection conn = connectionFactory.getConnection();
					PreparedStatement statement = conn.prepareStatement(sql)) {
				statement.setInt(1, id);

				int rowsUpdated = statement.executeUpdate();
				if (rowsUpdated != 1) {
				//	throw new Exception("No such mentor");
				}
			} catch (SQLException ex) {
				throw new RuntimeException(ex);
			}
		}

		@Override
		public void updateMentor(int id, Mentor mentor) throws NotFoundException {
			
				String sql = "UPDATE mentor SET firstName = ?, lastName = ?,email = ?, company = ?,title = ?,"
						+ "yearGraduate = ?,description = ?,available = ? WHERE id = ?";
				try (Connection conn = connectionFactory.getConnection();
						PreparedStatement statement = conn
								.prepareStatement(sql)) {
					statement.setString(1, mentor.getFirstName());
					statement.setString(2, mentor.getLastName());
					statement.setString(3, mentor.getEmail());
					statement.setString(4, mentor.getCompany());
					statement.setString(5, mentor.getTitle());
					statement.setString(6, mentor.getYearGraduated());
					statement.setString(7, mentor.getDescription());
					statement.setBoolean(8, mentor.isAvailable());

					int rowsUpdated = statement.executeUpdate();
					if (rowsUpdated != 1) {
						throw new NotFoundException("No such mentor");
					}
				} catch (SQLException ex) {
					throw new RuntimeException(ex);
				}
			}

		}


		
		
		
		
		