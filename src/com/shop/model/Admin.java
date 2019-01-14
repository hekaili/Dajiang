package com.shop.model;

public class Admin {
	private int adminId;
	private String adminName;
	private String adminPWd;
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPWd() {
		return adminPWd;
	}
	public void setAdminPWd(String adminPWd) {
		this.adminPWd = adminPWd;
	}

	public Admin(int adminId, String adminName, String adminPWd) {
		super();
		this.adminId = adminId;
		this.adminName = adminName;
		this.adminPWd = adminPWd;
	}
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminName=" + adminName
				+ ", adminPWd=" + adminPWd + "]";
	}
	
}
