package com.shop.model;

import java.sql.Date;

public class UserInfo {

	private int userId;
	private String userName;
	private String userEmail;
	private String userPwd;
	private String userPhone;
	private int userBalance;
	private Date create_time;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public int getUserBalance() {
		return userBalance;
	}
	public void setUserBalance(int userBalance) {
		this.userBalance = userBalance;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	public UserInfo(int userId, String userName, String userEmail,
			String userPwd, String userPhone, int userBalance, Date create_time) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPwd = userPwd;
		this.userPhone = userPhone;
		this.userBalance = userBalance;
		this.create_time = create_time;
	}
	public UserInfo() {
		super();
	}
	public UserInfo(String userEmail, String userPwd) {
		super();
		this.userEmail = userEmail;
		this.userPwd = userPwd;
	}
	public UserInfo(String userName, String userEmail, String userPwd,
			String userPhone) {
		super();
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPwd = userPwd;
		this.userPhone = userPhone;
	}
	
	
	
}
