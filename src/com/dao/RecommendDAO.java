package com.dao;

import util.dbConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dto.recommendDTO;

public class RecommendDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	
	public int register(recommendDTO data)
	{
	      String SQL = "INSERT INTO recommend VALUES(?,?,?,?)";
	      
	      try {
	         
	         Connection conn = dbConnection.getConnection();
	         
	         PreparedStatement pstmt = conn.prepareStatement(SQL);
	         pstmt.setString(1, data.getId());
	         pstmt.setInt(2, data.getBoard_number());
	         pstmt.setInt(3, data.getLike());
	         pstmt.setInt(4, data.getDislike());
	  
	         return pstmt.executeUpdate();
	         
	      }catch(Exception e) {
	         e.printStackTrace();
	      }
	      return -1;
	 }
	
	public int processLike(String id,int board_number)
	{
		ResultSet result=null;
		BoardDAO boardDAO = new BoardDAO();
	    String SQL = "SELECT likely FROM recommend WHERE id=? and board_number=?";
	    
	    System.out.println(SQL);
	      try {
	         Connection conn = dbConnection.getConnection();
	         
	         PreparedStatement pstmt = conn.prepareStatement(SQL);
	         pstmt = conn.prepareStatement(SQL);
	         pstmt.setString(1, id);
	         pstmt.setInt(2, board_number);
	         result=pstmt.executeQuery();

	         if(result.next())
	         {
	        	 System.out.println(result.getInt(1));
	        	 if(result.getInt(1)==1)
		         {

		        	 SQL = "UPDATE recommend SET likely=0 where id=? and board_number=?";
		      
			         pstmt = conn.prepareStatement(SQL);
			         pstmt.setString(1, id);
			         pstmt.setInt(2, board_number);
			         int rs=pstmt.executeUpdate();
		        	 
			         
	        		 boardDAO.processLike(board_number, -1);
		            return -1;
		         }
		         else
		         {
		        	 SQL = "UPDATE recommend SET likely=1 where id=? and board_number=?";
		      
			         pstmt = conn.prepareStatement(SQL);
			         pstmt.setString(1, id);
			         pstmt.setInt(2, board_number);
			         int rs=pstmt.executeUpdate();


		        	 boardDAO.processLike(board_number, 1);
			         
		        	 return 1;
		         }
	          
	         }
	         else
	         {
	        	 recommendDTO data = new recommendDTO(id,board_number,0,0);
	        	 this.register(data);
	
	        	 SQL = "UPDATE recommend SET likely=1 where id=? and board_number=?";
			      
		         pstmt = conn.prepareStatement(SQL);
		         pstmt.setString(1, id);
		         pstmt.setInt(2, board_number);
		         int rs=pstmt.executeUpdate();
	        	 


        		boardDAO.processLike(board_number, 1);
	            return 1;
	        	 
	     
	         }
	      }catch(Exception e) {
	         e.printStackTrace();
	      }
	      return -2;
	}
	
	public int processDisLike(String id,int board_number)
	{
		ResultSet result=null;
		BoardDAO boardDAO = new BoardDAO();
	    String SQL = "SELECT dislikely FROM recommend WHERE id=? and board_number=?";
	    
	    System.out.println(SQL);
	      try {
	         Connection conn = dbConnection.getConnection();
	         
	         PreparedStatement pstmt = conn.prepareStatement(SQL);
	         pstmt = conn.prepareStatement(SQL);
	         pstmt.setString(1, id);
	         pstmt.setInt(2, board_number);
	         result=pstmt.executeQuery();

	         if(result.next())
	         {
	        	 System.out.println(result.getInt(1));
	        	 if(result.getInt(1)==1)
		         {

		        	 SQL = "UPDATE recommend SET dislikely=0 where id=? and board_number=?";
		      
			         pstmt = conn.prepareStatement(SQL);
			         pstmt.setString(1, id);
			         pstmt.setInt(2, board_number);
			         int rs=pstmt.executeUpdate();
		        	 


	        		boardDAO.processDisLike(board_number, -1);
		            return -1;
		         }
		         else
		         {
		        	 SQL = "UPDATE recommend SET dislikely=1 where id=? and board_number=?";
		      
			         pstmt = conn.prepareStatement(SQL);
			         pstmt.setString(1, id);
			         pstmt.setInt(2, board_number);
			         int rs=pstmt.executeUpdate();


		        	 boardDAO.processDisLike(board_number, 1);
		        	 return 1;
		         }
	          
	         }
	         else
	         {
	        	 recommendDTO data = new recommendDTO(id,board_number,0,0);
	        	 this.register(data);
	
	        	 SQL = "UPDATE recommend SET dislikely=1 where id=? and board_number=?";
			      
		         pstmt = conn.prepareStatement(SQL);
		         pstmt.setString(1, id);
		         pstmt.setInt(2, board_number);
		         int rs=pstmt.executeUpdate();
	        	 


        		boardDAO.processDisLike(board_number, 1);
	            return 1;
	        	 
	     
	         }
	      }catch(Exception e) {
	         e.printStackTrace();
	      }
	      return -2;
	}
}
