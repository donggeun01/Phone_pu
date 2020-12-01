package util;
import java.sql.*;

public class DatabaseUtil {
	
	public static Connection getConnection() {
		try {
							
			String dbURL = "jdbc:mysql://localhost:3306/"
					+"memberinfo?serverTimezone=UTC";
			String dbID= "root"; 
			String dbPassword = "poly1234@";
			Class.forName("com.mysql.jdbc.Driver"); 
			return DriverManager.getConnection(dbURL, dbID, dbPassword);	
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
}
