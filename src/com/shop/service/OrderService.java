package com.shop.service;

import java.util.List;

import com.shop.model.Order;

public interface OrderService {

	//��ѯ
	public boolean addOrder(Order order);
	//���ݶ�����Ų�ѯ
	public List<Order> findOrder(long order_number);
}
