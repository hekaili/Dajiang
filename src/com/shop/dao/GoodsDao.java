package com.shop.dao;

import java.util.List;

import com.shop.model.Goods;

public interface GoodsDao {
	//��ѯȫ��
	public List<Goods> listAll();
	//����id��ѯ��Ʒ
	public Goods findGoods(int goods_id);
}
