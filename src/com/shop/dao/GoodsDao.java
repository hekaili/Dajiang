package com.shop.dao;

import java.util.List;

import com.shop.model.Goods;

public interface GoodsDao {
	//查询全部
	public List<Goods> listAll();
	//根据id查询商品
	public Goods findGoods(int goods_id);
}
