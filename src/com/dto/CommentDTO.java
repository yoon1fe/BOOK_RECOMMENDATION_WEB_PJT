package com.dto;

import java.sql.Timestamp;

public class CommentDTO {
	private int comment_number;
	private String id;
	private int board_number;
	private String comment_content;
	private Timestamp datetime;
	
	public CommentDTO(int comment_number, int board_number, String comment_content) {
		super();
		this.comment_number = comment_number;
		this.board_number = board_number;
		this.comment_content = comment_content;
	}
	
	public Timestamp getDatetime() {
		return datetime;
	}

	public void setDatetime(Timestamp datetime) {
		this.datetime = datetime;
	}
	
	public int getComment_number() {
		return comment_number;
	}
	public void setComment_number(int comment_number) {
		this.comment_number = comment_number;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBoard_number() {
		return board_number;
	}
	public void setBoard_number(int board_number) {
		this.board_number = board_number;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	
	
}
