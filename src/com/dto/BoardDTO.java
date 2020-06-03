package com.dto;

import java.sql.Timestamp;

public class BoardDTO {
	private int board_number;
	private String title;
	private String board_content;
	private String id;
	private Timestamp datetime;
	
	public BoardDTO(String title, String board_content, String id) {
		super();
		this.title = title;
		this.board_content = board_content;
		this.id = id;
	}
	
	public int getBoard_number() {
		return board_number;
	}
	public void setBoard_number(int board_number) {
		this.board_number = board_number;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Timestamp getDatetime() {
		return datetime;
	}
	public void setDatetime(Timestamp datetime) {
		this.datetime = datetime;
	}
	
	
}
