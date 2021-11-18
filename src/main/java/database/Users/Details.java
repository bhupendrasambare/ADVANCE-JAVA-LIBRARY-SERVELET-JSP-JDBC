package database.Users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import database.login.common;

public class Details {
	
	public static Connection connection = common.getConncection();
	
	public ResultSet getUserDetails(int Id) {
		ResultSet result = null;
		
		if(connection == null) {
			connection = common.getConncection();
		}
		try {
			
			PreparedStatement sql = connection.prepareStatement("SELECT name,last,email,number from `students` where s_id= ?");
			
			sql.setInt(1,Id);
			result = sql.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
		
	}
	
	public ResultSet getFineCount(int id) {
		ResultSet result = null;
		if(connection == null) {
			connection = common.getConncection();
		}
		try {
			PreparedStatement sql = connection.prepareStatement("SELECT SUM(due) from due where student = ?");
			sql.setInt(1,id);
			result = sql.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public ResultSet getIssueBookCount(int id) {
		ResultSet result = null;
		if(connection ==null) {
			connection = common.getConncection();
		}
			try {
				PreparedStatement sql = connection.prepareStatement("SELECT count(s_id) from issue where s_id = ?");
				sql.setInt(1, id);
				result = sql.executeQuery();
			} catch (Exception e) {
				e.printStackTrace();
			}
		return result;
	}
}
