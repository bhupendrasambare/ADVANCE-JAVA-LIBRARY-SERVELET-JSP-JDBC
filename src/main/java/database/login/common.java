package database.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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

	//Register new account
	public boolean registerAccount(String name,String last,String email,String number,String password) {
		
		if(connection ==null) {
			connection = getConncection();
		}
		try {
			
			PreparedStatement sql = connection
					.prepareStatement("INSERT INTO `students` (`s_id`, `name`, `last`, `email`, `number`, `password`) VALUES (NULL, ?, ?, ?, ?, ?)");
			sql.setString(1,name);
			sql.setString(2,last);
			sql.setString(3,email);
			sql.setString(4,number);
			sql.setString(5,password);
		
			if(sql.executeUpdate() >0) {
				return true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return false;
	}
}
