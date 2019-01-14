package com.shop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shop.dao.GoodsDao;
import com.shop.model.Goods;
import com.shop.util.BaseDao;

public class GoodsDaoImpl extends BaseDao implements GoodsDao {

	Connection con = null;
	PreparedStatement pre = null;
	ResultSet re = null;
	public List<Goods> listAll() {
		List<Goods> list = new ArrayList<Goods>();
		con = getCon();
		String sql = "select goods_id,goods_name,goods_color,goods_price,pic_url from goods";
		try {
			pre = con.prepareStatement(sql);
			re = pre.executeQuery();
			while(re.next()){
				Goods goods = new Goods(re.getInt(1),re.getString(2),re.getString(3),re.getInt(4),re.getString(5));
				list.add(goods);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(re, pre, con);
		}
		return list;
	}

	public Goods findGoods(int goods_id) {
		Goods goods = null;
		con = getCon();
		String sql = "select goods_id,goods_name,goods_color,goods_price,pic_url from goods where goods_id=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setInt(1, goods_id);
			re = pre.executeQuery();
			while(re.next()){
				goods = new Goods(re.getInt(1),re.getString(2),re.getString(3),re.getInt(4),re.getString(5));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(re, pre, con);
		}
		return goods;
	}

}
