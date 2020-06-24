package com.dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class BoardDTO {
	private int board_number;
	private String title;
	private String board_content;
	private String id;
	private int readCount;
	private int like;
	private int dislike;
	private Timestamp datetime;
	SimpleDateFormat formatter = new SimpleDateFormat ("yy-MM-dd HH:mm");
	
	public int getDislike() {
		return dislike;
	}

	public void setDislike(int dislike) {
		this.dislike = dislike;
	}

	public int getLike() {
		return like;
	}

	public void setLike(int like) {
		this.like = like;
	}


	
	public BoardDTO(String title, String board_content, String id) {
		super();
		this.title = title;
		this.board_content = board_content;
		this.id = id;
	}

	public int getReadCount() {
		return readCount;
	}

	public void setReadCount(int readCount) {
		this.readCount = readCount;
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

	
	
	@Override
	public String toString() {
		return formatter.format(datetime);
	}
	
	
}
