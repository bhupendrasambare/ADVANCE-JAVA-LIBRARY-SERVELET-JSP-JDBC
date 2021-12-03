package database.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.protocol.Resultset;

import database.login.common;

public class adminlogin {
	
	private static Connection connection = null;
	
	public static ResultSet checkLogin(String email, String password) {
		ResultSet result=null;
		if(connection == null) {
			connection = common.getConncection();
		}
		try {

			PreparedStatement sql = connection
					.prepareStatement("SELECT * FROM librarys where email = ? and password = ? LIMIT 1");
			
			sql.setString(1, email);
			sql.setString(2, password);
			
			result = sql.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	
	}
}
