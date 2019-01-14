package com.shop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shop.dao.OrderDao;
import com.shop.model.Order;
import com.shop.util.BaseDao;

public class OrderDaoImpl extends BaseDao implements OrderDao {

	Connection con = null;
	PreparedStatement pre = null;
	ResultSet re = null;
	public boolean addOrder(Order order) {
		String sql = "insert into shop_order values(seq_order_id.nextval,?,?,?,?,?,?,1,sysdate,1,sysdate,sysdate,?)";
		Object[] obj = {order.getOrder_number(),order.getU_id(),order.getO_consignee(),order.getO_phone(),order.getO_location(),order.getPay_price(),order.getGoodsName()};
		return adu(sql, obj);
	}

	public List<Order> findOrder(long order_number) {
		List<Order> list = new ArrayList<Order>();
		Order order = null;
		con= getCon();
		String sql = "select order_id,order_number,u_id,o_consignee,o_phone,o_location,goodsName,pay_price,is_pay,pay_time,is_ship,ship_time,create_time from shop_order where order_number=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setLong(1, order_number);
			re = pre.executeQuery();
			while(re.next()){
				order = new Order(re.getInt(1),re.getLong(2),re.getInt(3),re.getString(4),re.getLong(5),re.getString(6),re.getString(7),re.getInt(8),re.getInt(9),re.getDate(10),re.getInt(11),re.getDate(12),re.getDate(13));
				list.add(order);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(re, pre, con);
		}
		return list;
	}

}
