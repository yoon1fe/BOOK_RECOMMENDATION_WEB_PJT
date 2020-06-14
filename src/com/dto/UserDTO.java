package com.dto;

public class UserDTO {
	private String userID;
	private String userPassword;
	private String userName;
	private int age;
	private String sex;
	private String email;
	private String emailHash;
	private boolean emailChecked;
	
	
	public UserDTO(String userID, String userPassword, String userName, int age, String sex, String email,
			String emailHash, boolean emailChecked) {
		super();
		this.userID = userID;
		this.userPassword = userPassword;
		this.userName = userName;
		this.age = age;
		this.sex = sex;
		this.email = email;
		this.emailHash = emailHash;
		this.emailChecked = emailChecked;
	}
	
	public String getEmailHash() {
		return emailHash;
	}
	public void setEmailHash(String emailHash) {
		this.emailHash = emailHash;
	}
	public boolean isEmailChecked() {
		return emailChecked;
	}
	public void setEmailChecked(boolean emailChecked) {
		this.emailChecked = emailChecked;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
