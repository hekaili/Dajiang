package com.shop.model;

public class GoodsItem {

	private Goods goods;
	private Integer number;
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public GoodsItem(Goods goods, Integer number) {
		super();
		this.goods = goods;
		this.number = number;
	}
	public GoodsItem() {
		super();
	}
	
}
