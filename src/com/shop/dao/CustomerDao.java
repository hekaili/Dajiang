package com.shop.dao;

import java.util.List;

import com.shop.model.Customer;

public interface CustomerDao {
	//��ѯ���������
	public List<Customer> listChaRecords();
	//����������ݵ����ݿ�
	public boolean addChaRecords(Customer charecords);
	//�޸Ŀͷ�������Ϣ��״̬
	public boolean upUsersend(String send,int identity);
}
