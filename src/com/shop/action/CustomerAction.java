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
	//����ͷ�����
	public String toservice(){
		return "toservice";
	}
	//�����û�����
	public String user(){
		return "user";
	}
	//�û�����Ϳͷ����������е�action����
	//��ҳ�����ʱ����ʾ�����ݿ��е������¼
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
	//����ǰ̨���������������ݲ������������ж�
	public String charecord(){
		String charnext = getParameter("charnext", 0);
		getApplication().put("charecord", charnext);
		return null;
	}
	//����¼���ת�����ķ�����ʱʱ��ȡ��������
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
	//�ж���Ϣ�Ƿ��Ǹշ��͵�
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
