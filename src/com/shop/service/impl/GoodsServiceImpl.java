package com.shop.service.impl;

import java.util.List;

import com.shop.dao.GoodsDao;
import com.shop.dao.impl.GoodsDaoImpl;
import com.shop.model.Goods;
import com.shop.service.GoodsService;

public class GoodsServiceImpl implements GoodsService {

	GoodsDao goodsDao = new GoodsDaoImpl();
	public List<Goods> listAll() {
		// TODO Auto-generated method stub
		return goodsDao.listAll();
	}

	public Goods findGoods(int goods_id) {
		// TODO Auto-generated method stub
		return goodsDao.findGoods(goods_id);
	}

}
