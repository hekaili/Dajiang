package com.shop.dao;

import java.util.List;

import com.shop.model.Order;

public interface OrderDao {

	//���
	public boolean addOrder(Order order);
	//���ݶ�����Ų�ѯ
	public List<Order> findOrder(long order_number);
}
