package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbConnection {
	public static Connection getConnection() {
		try {
			String dbURL;
			String dbID;
			String dbPASSWORD;
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			return DriverManager.getConnection(dbURL,dbID,dbPASSWORD);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
