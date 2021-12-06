package database.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.login.common;

public class adminStudent {
private static Connection connection = null;
	
	public ResultSet StudentList() {
		ResultSet result = null;
		if(connection == null) {
			connection = common.getConncection();
		}
		PreparedStatement sql;
		try {
			sql = connection.prepareStatement("SELECT * FROM students");
			result = sql.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
}
