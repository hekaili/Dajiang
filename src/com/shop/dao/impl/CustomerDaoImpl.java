package com.shop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shop.dao.CustomerDao;
import com.shop.model.Customer;
import com.shop.util.BaseDao;



public class CustomerDaoImpl extends BaseDao implements CustomerDao{
	Connection conn =null;
	PreparedStatement pre =null;
	ResultSet rs = null;
	//查询聊天表内容
	@Override
	public List<Customer> listChaRecords() {
		conn = getCon();
		Customer charecords = null;
		List<Customer> list = new ArrayList<Customer>();
		String sql = "select charid,charnext,identity,send,chardate from charecords order by charid";
		try {
			pre = conn.prepareStatement(sql);
			rs = pre.executeQuery();
			while(rs.next()){
				charecords = new Customer (rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(4),rs.getDate(5));
				list.add(charecords);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	//添加聊天内容
	@Override
	public boolean addChaRecords(Customer charecords) {
		String sql = "insert into charecords values(char_next.nextval,?,?,?,sysdate)";
		Object [] obj = {charecords.getCharnext(),charecords.getIdentity(),charecords.getSend()};
		return adu(sql, obj);
	}
	@Override
	public boolean upUsersend(String send,int identity) {
		String sql = "update charecords set send = ? where identity =?";
		Object [] obj = {send,identity};
		return adu(sql, obj);
	}

}
