package database.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import database.login.common;

public class bag {
	public static Connection connection = null;
	public ResultSet getIssueBook(int id) {
		ResultSet result = null;
		if(connection == null) {
			connection = common.getConncection();
		}
		try {
			PreparedStatement sql = connection.prepareStatement("Select * from issue where s_id = ?");
			sql.setInt(1,id);
			result = sql.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
