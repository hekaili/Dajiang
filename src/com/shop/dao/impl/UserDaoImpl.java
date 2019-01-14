package com.shop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shop.dao.UserDao;
import com.shop.model.UserInfo;
import com.shop.util.BaseDao;
import com.sun.org.apache.bcel.internal.generic.ARRAYLENGTH;

public class UserDaoImpl extends BaseDao implements UserDao {

	Connection con = null;
	PreparedStatement pre = null;
	ResultSet re = null;

	//����û�
	public boolean addUser(UserInfo userInfo) {
		String sql = "insert into member (userId,userName,userEmail,userPwd,userPhone,create_time) values(seq_u_id.nextval,?,?,?,?,sysdate)";
		Object[] obj = {userInfo.getUserName(),userInfo.getUserEmail(),userInfo.getUserPwd(),userInfo.getUserPhone()};
		return adu(sql,obj);
	}

	//��֤��¼
	public UserInfo findByParam(String userEmail,String userPwd) {
		UserInfo user = null;
		con = getCon();
		String sql = "select userId,userName,userEmail,userPwd,userPhone,userBalance,create_time from member where userEmail=? and userPwd=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1,userEmail);
			pre.setString(2,userPwd);
			re = pre.executeQuery();
			while (re.next()){
				user = new UserInfo(re.getInt(1),re.getString(2),re.getString(3),re.getString(4),re.getString(5),re.getInt(6),re.getDate(7));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			closeAll(re, pre, con);
		}
		return user;
	}
	
	
	
	//查询全部
	public List<UserInfo> findByParam() {
		List<UserInfo> list = new ArrayList<UserInfo>();
		UserInfo user = null;
		con = getCon();
		String sql = "select userId,userName,userEmail,userPwd,userPhone,userBalance,create_time from member";
		try {
			pre = con.prepareStatement(sql);
			re = pre.executeQuery();
			while (re.next()){
				user = new UserInfo(re.getInt(1),re.getString(2),re.getString(3),re.getString(4),re.getString(5),re.getInt(6),re.getDate(7));
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			closeAll(re, pre, con);
		}
		return list;
	}

	
	
	
	public boolean check(String userEmail) {
		con = getCon();
		String sql = "select count(*) from member where userEmail = ?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, userEmail);
			re = pre.executeQuery();
			while(re.next()){
				if(re.getInt(1)<=0){
					return true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			closeAll(re, pre, con);
		}
		return false;
		
	}

}
