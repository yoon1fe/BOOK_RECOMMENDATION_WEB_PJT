package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.dto.CommentDTO;

import util.dbConnection;

public class CommentDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public int addComment(String id, int board_number, String comment_content) {
		
		
		try {
			conn = dbConnection.getConnection();
			String sql = "insert into comment(id, board_number, comment_content) values(?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  id);
			pstmt.setInt(2, board_number);
			pstmt.setString(3, comment_content);
			
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}
	
	public int deleteComment(int comment_number) {
		try {
			conn = dbConnection.getConnection();
			String sql = "delete from comment where comment_number = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, comment_number);
			
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}
	
	public ArrayList<CommentDTO> getComments(int board_number) {
		ArrayList<CommentDTO> comments = new ArrayList<CommentDTO>();
		
		try {
			conn = dbConnection.getConnection();
			String sql = "select comment_number, id, comment_content, date from comment where board_number = ? order by date asc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  board_number);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int comment_number= rs.getInt(1);
				String id = rs.getString(2);
				String comment_content = rs.getString(3);
				Timestamp datetime = rs.getTimestamp(4);
				
				CommentDTO comment = new CommentDTO(id, comment_content, datetime);
				comment.setComment_number(comment_number);
				
				comments.add(comment);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		
		
		return comments;
	}
}
