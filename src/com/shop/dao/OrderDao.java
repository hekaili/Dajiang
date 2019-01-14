package com.shop.dao;

import java.util.List;

import com.shop.model.Order;

public interface OrderDao {

	//添加
	public boolean addOrder(Order order);
	//根据订单编号查询
	public List<Order> findOrder(long order_number);
}
