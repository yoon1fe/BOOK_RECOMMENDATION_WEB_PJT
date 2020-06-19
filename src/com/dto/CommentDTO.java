package com.dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class CommentDTO {
	private int comment_number;
	private String id;
	private int board_number;
	private String comment_content;
	private Timestamp datetime;
	SimpleDateFormat formatter = new SimpleDateFormat ("yy-MM-dd hh:mm");
	
	public CommentDTO(String id, String comment_content, Timestamp datetime) {
		super();
		this.id = id;
		this.comment_content = comment_content;
		this.datetime = datetime;
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

	@Override
	public String toString() {
		return formatter.format(datetime);
	}
	
	
}
