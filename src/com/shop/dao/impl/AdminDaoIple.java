package com.shop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.shop.dao.IAdminDao;
import com.shop.model.Admin;
import com.shop.model.UserInfo;
import com.shop.util.BaseDao;

public class AdminDaoIple extends BaseDao implements IAdminDao{

	Connection con = null; 
	PreparedStatement pre = null;
	ResultSet re = null;
	Admin admin = null;
	
	@Override
	public Admin find(String adminName, String adminPwd) {
		
		Admin admin = null;
		con = getCon();
		try {
			String sql = "select adminId, adminName, adminPwd from admin where adminName = ? and adminPwd = ?";
			pre = con.prepareStatement(sql);
			pre.setString(1, adminName);
			pre.setString(2, adminPwd);
			re = pre.executeQuery();
			while (re.next()){
				admin = new Admin(re.getInt(1), re.getString(2), re.getString(3));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeAll(re, pre, con);
		} 
	
		return admin;
	}
}
