package com.shop.service;

import java.util.List;

import com.shop.model.Goods;

public interface GoodsService {

		//��ѯȫ
		public List<Goods> listAll();
		//���id��ѯ��Ʒ
		public Goods findGoods(int goods_id);
}
