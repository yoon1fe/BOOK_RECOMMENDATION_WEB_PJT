package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbConnection {
	public static Connection getConnection() {
		try {
			String dbURL = "jdbc:mysql://15.165.219.175:3306/recomm?characterEncoding=utf8";
			String dbID = "user1";
			String dbPASSWORD = "user";
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			return DriverManager.getConnection(dbURL,dbID,dbPASSWORD);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}