package com.shop.service;

import java.util.List;

import com.shop.model.Customer;


public interface CustomerService {
	//��ѯ���������
	public List<Customer> listChaRecords();
	//����������ݵ����ݿ�
	public boolean addChaRecords(Customer charecords);
	//�޸Ŀͷ�������Ϣ��״̬
	public boolean upUsersend(String send,int identity);
}
