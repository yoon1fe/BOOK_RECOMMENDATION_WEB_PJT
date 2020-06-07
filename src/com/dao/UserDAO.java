package com.dao;

import util.dbConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	public int register(String id,String password,String name,int age,String sex,String email)
	{
		String SQL = "INSERT INTO user VALUES (?,?,?,?,?,?)";
		try {
			
			Connection conn = dbConnection.getConnection();
			
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			pstmt.setString(3, name);
			pstmt.setInt(4, age);
			pstmt.setString(5, sex);
			pstmt.setString(6, email);
			
			return pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int login(String id,String password)
	{
		ResultSet result;
		String SQL = "SELECT password FROM user WHERE id=?";
		
		System.out.println(SQL);
		try {
			Connection conn = dbConnection.getConnection();
			
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			result=pstmt.executeQuery();

			if(result.next())
			{
				if(result.getString(1).equals(password))
				{
					return 1;
				}
				else
					return 0;

			}
			return -1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;
	}

}
