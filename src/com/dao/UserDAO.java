package com.dao;

import util.dbConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dto.UserDTO;

public class UserDAO {

	public int register(UserDTO user)
	   {
	      String SQL = "INSERT INTO user VALUES (?,?,?,?,?,?,?,false)";
	      
	      String result = user.getEmail().substring(user.getEmail().lastIndexOf("@")+1);
	      
	      if(result.compareTo("knu.ac.kr")!=0)
	      {
	         return -2;
	      }
	      
	      try {
	         
	         Connection conn = dbConnection.getConnection();
	         
	         PreparedStatement pstmt = conn.prepareStatement(SQL);
	         pstmt.setString(1, user.getUserID());
	         pstmt.setString(2, user.getUserPassword());
	         pstmt.setString(3, user.getUserName());
	         pstmt.setInt(4, user.getAge());
	         pstmt.setString(5, user.getSex());
	         pstmt.setString(6, user.getEmail());
	         pstmt.setString(7, user.getEmailHash());
	         
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
	   
	   public String getUserEmail(String userID) {
	      Connection conn = dbConnection.getConnection();
	      ResultSet rs;
	      String SQL = "SELECT email FROM user WHERE id = ?";

	      try {

	         PreparedStatement pstmt = conn.prepareStatement(SQL);
	         pstmt.setString(1, userID);
	         rs = pstmt.executeQuery();

	         while(rs.next()) {
	            return rs.getString(1); // �씠硫붿씪 二쇱냼 諛섑솚
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      }

	      return null; // �뜲�씠�꽣踰좎씠�뒪 �삤瑜�
	   }
	   
	   public boolean getUserEmailChecked(String userID) {
	      Connection conn = dbConnection.getConnection();
	      ResultSet rs;
	      String SQL = "SELECT emailChecked FROM user WHERE id = ?";

	      try {

	         PreparedStatement pstmt = conn.prepareStatement(SQL);

	         pstmt.setString(1, userID);

	         rs = pstmt.executeQuery();

	         while(rs.next()) {

	            return rs.getBoolean(1); // �씠硫붿씪 �벑濡� �뿬遺� 諛섑솚

	         }

	      } catch (Exception e) {

	         e.printStackTrace();

	      }

	      return false; // �뜲�씠�꽣踰좎씠�뒪 �삤瑜�

	   }

	   public boolean setUserEmailChecked(String userID) {
	      Connection conn = dbConnection.getConnection();
	      ResultSet rs;
	      String SQL = "UPDATE user SET emailChecked = true WHERE id = ?";

	      try {

	         PreparedStatement pstmt = conn.prepareStatement(SQL);

	         pstmt.setString(1, userID);

	         pstmt.executeUpdate();

	         return true; // �씠硫붿씪 �벑濡� �꽕�젙 �꽦怨�

	      } catch (Exception e) {

	         e.printStackTrace();

	      }

	      return false; // �씠硫붿씪 �벑濡� �꽕�젙 �떎�뙣

	   }



}
