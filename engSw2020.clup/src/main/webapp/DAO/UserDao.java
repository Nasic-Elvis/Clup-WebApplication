package main.webapp.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import main.webapp.model.User;
import main.webapp.util.DBConnection;

public class UserDao {
	private final static Logger log = Logger.getLogger(LoginDao.class.getName());

	public User getUserInformation(int idUser) {
		User user = null;
		String query = "SELECT * FROM user WHERE idUser =" + idUser;
		try (Connection con = DBConnection.createConnection();
				Statement statement = con.createStatement();
				ResultSet resultSet = statement.executeQuery(query)) {
			while (resultSet.next()) {
				user = new User();
				user.setBirthdayDate(resultSet.getDate("BirthdayDate"));
				user.setEmail(resultSet.getString("Email"));
				user.setName(resultSet.getString("Name"));
				user.setSurname(resultSet.getString("Surname"));
				user.setTelephoneNumber(resultSet.getString("TelephoneNumber"));
				user.setUserName(resultSet.getString("Username"));
			}
			return user;

		} catch (Exception e) {
			log.log(Level.FINE, e.toString());
		}
		return user;

	}

	public int modifyUserInfo(int idUser, String name, String surname, String email, String userName,
			String telephoneNumber, Date birthdayDate) {
		String query = "UPDATE user SET Name=" + "\"" + name + "\"" + "," + " Surname=" + "\"" + surname + "\"" + ","
				+ " BirthdayDate=" + "\"" + birthdayDate + "\"" + "," + " TelephoneNumber=" + "\"" + telephoneNumber
				+ "\"" + "," + " Email=" + "\"" + email + "\"" + "," + " Username=" + "\"" + userName + "\""
				+ " WHERE idUser=" + idUser;
		int result = 0;
		try (Connection con = DBConnection.createConnection(); Statement statement = con.createStatement();) {
			result = statement.executeUpdate(query);
			return result;
		} catch (Exception e) {
			log.log(Level.FINE, e.toString());
		}
		return result;
	}
}