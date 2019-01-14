package com.shop.service.impl;

import java.util.List;

import com.shop.dao.OrderDao;
import com.shop.dao.impl.OrderDaoImpl;
import com.shop.model.Order;
import com.shop.service.OrderService;

public class OrderServiceImpl implements OrderService {

	OrderDao orderDao = new OrderDaoImpl();
	public boolean addOrder(Order order) {
		// TODO Auto-generated method stub
		return orderDao.addOrder(order);
	}
	public List<Order> findOrder(long order_number) {
		// TODO Auto-generated method stub
		return orderDao.findOrder(order_number);
	}

}
