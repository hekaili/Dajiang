package com.shop.dao;

import java.util.List;

import com.shop.model.Customer;

public interface CustomerDao {
	//查询聊天表内容
	public List<Customer> listChaRecords();
	//添加聊天内容到数据库
	public boolean addChaRecords(Customer charecords);
	//修改客服发送信息的状态
	public boolean upUsersend(String send,int identity);
}
