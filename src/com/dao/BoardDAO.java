package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.dto.BoardDTO;

import util.dbConnection;

public class BoardDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public int addBoard(String title, String content, String id) {
		try {
			conn = dbConnection.getConnection();
			String sql = "insert into board(title, board_content, id) values(?, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, id);
			
			System.out.println(title + " " + content + " " + id);
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}
	
	public BoardDTO getBoardContent(int board_number) {
		BoardDTO board = null;
		
		try {
			conn = dbConnection.getConnection();
			String sql = "select * from board where board_number = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  board_number);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String title = rs.getString(2);
				String board_content = rs.getString(3);
				String id = rs.getString(4);
				Timestamp datetime = rs.getTimestamp(5);

				board = new BoardDTO(title, board_content, id);
				board.setBoard_number(board_number);
				board.setDatetime(datetime);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return board;
	}
	public ArrayList<BoardDTO> getBoards() {
		ArrayList<BoardDTO> boards = new ArrayList<BoardDTO>();
		
		try {
			conn = dbConnection.getConnection();
			String sql = "select * from board";
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int board_number = rs.getInt(1);
				String title = rs.getString(2);
				String board_content = rs.getString(3);
				String id = rs.getString(4);
				Timestamp datetime = rs.getTimestamp(5);

				BoardDTO board = new BoardDTO(title, board_content, id);
				board.setBoard_number(board_number);
				board.setDatetime(datetime);
				
				boards.add(board);
			}
			
			
			
		}catch (Exception e) {
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
		
		
		return boards;		
	}
	
	
	
}
