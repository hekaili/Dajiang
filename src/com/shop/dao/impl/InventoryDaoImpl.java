package com.shop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shop.dao.InventoryDao;
import com.shop.model.Inventory;
import com.shop.util.BaseDao;

public class InventoryDaoImpl extends BaseDao implements InventoryDao {

	Connection con = null;
	PreparedStatement pre = null;
	ResultSet re = null;
	@Override
	public List<Inventory> listAll() {
		List<Inventory> list = new ArrayList<Inventory>();
		con = getCon();
		String sql = "select inventory_id,goods_id,many,stock_many from goods_inventory";
		try {
			pre = con.prepareStatement(sql);
			re =  pre.executeQuery();
			while(re.next()){
				Inventory in = new Inventory(re.getInt(1),re.getInt(2),re.getInt(3),re.getInt(4));
				list.add(in);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(re, pre, con);
		}
		return list;
	}

	@Override
	public List<Inventory> findById(int goods_id) {
		List<Inventory> list = new ArrayList<Inventory>();
		Inventory in = null;
		con = getCon();
		String sql = "select inventory_id,goods_id,many,stock_many from goods_inventory where goods_id=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setInt(1, goods_id);
			re =  pre.executeQuery();
			while(re.next()){
				in = new Inventory(re.getInt(1),re.getInt(2),re.getInt(3),re.getInt(4));
				list.add(in);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(re, pre, con);
		}
		return list;
	}

	@Override
	public boolean update(Inventory in) {
		String sql = "update goods_inventory set  many=? where goods_id=?;";
		Object[] obj = {in.getMany(),in.getGoods_id()};
		return adu(sql, obj);
	}

}
