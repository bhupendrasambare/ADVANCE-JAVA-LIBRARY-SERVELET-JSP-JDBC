package database.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.login.common;

public class adminDashboard {
	private static Connection connection = null;
	public ResultSet getAdminDetails(int id) {
		ResultSet result = null;
		
		if(connection == null) {
			connection = common.getConncection();
		}
		try {

			PreparedStatement sql = connection.prepareStatement("SELECT * FROM `librarys` WHERE `id` = ?");
			
			sql.setInt(1, id);
			
			result = sql.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public int getTotalDue() {
		int total = 0;
		ResultSet result = null;
		if(connection == null) {
			connection = common.getConncection();
		}
		try {
			PreparedStatement sql = connection.prepareStatement("SELECT SUM(due) as total from due");
			result = sql.executeQuery();
			if(result.next()) {
				total = result.getInt("total");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return total;
	}
	public int getTotaIssue() {
		int total = 0;
		ResultSet result = null;
		if(connection == null) {
			connection = common.getConncection();
		}
		try {
			PreparedStatement sql = connection.prepareStatement("SELECT count(i_id) as book from issue;");
			result = sql.executeQuery();
			if(result.next()) {
				total = result.getInt("book");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return total;
	}
}
