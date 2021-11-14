package database.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import com.mysql.cj.PreparedQuery;

public class common {
	
	private static Connection connection=null;
	public static boolean status=false;
	
	public static Connection getConncection() {
		
		if(connection ==null) {
			try {

				Class.forName("com.mysql.cj.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return connection;
	}
	
	
	//Check Login if 1 
	public ResultSet checkLogin(String email, String password) {
		ResultSet result=null;
		if(connection == null) {
			connection = getConncection();
		}
		try {

			PreparedStatement sql = connection
					.prepareStatement("SELECT s_id,name,last,email,number FROM students where email = ? and password = ? LIMIT 1");
			
			sql.setString(1, email);
			sql.setString(2, password);
			
			result = sql.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	
	}
	
	
}
