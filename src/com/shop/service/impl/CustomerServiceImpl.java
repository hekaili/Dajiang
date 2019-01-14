package com.shop.service.impl;

import java.util.List;

import com.shop.dao.CustomerDao;
import com.shop.dao.impl.CustomerDaoImpl;
import com.shop.model.Customer;
import com.shop.service.CustomerService;


public class CustomerServiceImpl implements CustomerService{
	CustomerDao charecordsDao = new CustomerDaoImpl();
	//��ѯ���������
	@Override
	public List<Customer> listChaRecords() {
		return charecordsDao.listChaRecords();
	}
	//����������ݵ����ݿ�
	@Override
	public boolean addChaRecords(Customer charecords) {
		return charecordsDao.addChaRecords(charecords);
	}
	@Override
	public boolean upUsersend(String send,int identity) {
		return charecordsDao.upUsersend(send, identity);
	}

}
