package com.shop.action;

import java.io.IOException;
import java.util.List;


import com.google.gson.Gson;
import com.shop.model.Customer;
import com.shop.service.CustomerService;
import com.shop.service.impl.CustomerServiceImpl;
import com.shop.util.BaseAction;

public class CustomerAction extends BaseAction{
	private Customer charecords;
	public Customer getCharecords() {
		return charecords;
	}
	public void setCharecords(Customer charecords) {
		this.charecords = charecords;
	}
	CustomerService charecordsBiz = new CustomerServiceImpl();
	//处理客服聊天
	public String toservice(){
		return "toservice";
	}
	//处理用户聊天
	public String user(){
		return "user";
	}
	//用户聊天和客服聊天所共有的action方法
	//当页面加载时，显示出数据库中的聊天纪录
	public String init(){
		List<Customer> listChaRecords = charecordsBiz.listChaRecords();
		try {
			Gson gson = new Gson();
			String charString = gson.toJson(listChaRecords);
			getResponse().getWriter().print(charString);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	//接收前台传回来的聊天数据并进行敏感字判断
	public String charecord(){
		String charnext = getParameter("charnext", 0);
		getApplication().put("charecord", charnext);
		return null;
	}
	//点击事件跳转过来的方法，时时获取聊天数据
	public String userchar(){
		String identity = getParameter("identity", 0);
		int identitys = Integer.valueOf(identity);
		String send = "true";
		String charnexts = (String) getApplication().get("chars");
		charecords = new Customer(charnexts,identitys,send);
		boolean floog = charecordsBiz.addChaRecords(charecords);
		if(floog){
			try {
				Gson gson = new Gson();
				String charnextsStr = gson.toJson(charnexts);
				getResponse().getWriter().print(charnextsStr);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}else{
			return "error";
		}
	}
	//判断信息是否是刚发送的
	public String Charrefresh(){
		String identity = getParameter("identity", 0);
		int identitys = Integer.valueOf(identity);
		String send = getParameter("send", 0);
		boolean floog = charecordsBiz.upUsersend(send, identitys);
		if(floog){
			try {
				getResponse().getWriter().print(floog);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}else{
			return "error";
		}
	}
}
