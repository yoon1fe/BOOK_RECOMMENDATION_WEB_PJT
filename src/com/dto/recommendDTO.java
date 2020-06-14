package com.dto;

public class recommendDTO {
	private String id;
	private int board_number;
	private int like;
	private int dislike;
	
	
	public recommendDTO(String id, int board_number, int like, int dislike) 
	{
		this.id = id;
		this.board_number = board_number;
		this.like = like;
		this.dislike = dislike;
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
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	public int getDislike() {
		return dislike;
	}
	public void setDislike(int dislike) {
		this.dislike = dislike;
	}
	
	

}
