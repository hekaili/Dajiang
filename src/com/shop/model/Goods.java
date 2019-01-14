package com.shop.model;

public class Goods {

	private int goods_id;
	private String goods_name; 
	private String goods_color; 
	private int goods_price ;
	private String pic_url ;
	private int goods_count ;
	
	public int getGoods_count() {
		return goods_count;
	}
	public void setGoods_count(int goods_count) {
		this.goods_count = goods_count;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getGoods_color() {
		return goods_color;
	}
	public void setGoods_color(String goods_color) {
		this.goods_color = goods_color;
	}
	public int getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}
	public String getPic_url() {
		return pic_url;
	}
	public void setPic_url(String pic_url) {
		this.pic_url = pic_url;
	}
	public Goods(int goods_id, String goods_name, 
			String goods_color, int goods_price, String pic_url) {
		super();
		this.goods_id = goods_id;
		this.goods_name = goods_name;
		this.goods_color = goods_color;
		this.goods_price = goods_price;
		this.pic_url = pic_url;
	}
	
	public Goods(int goods_id, String goods_name,
			String goods_color, int goods_price, String pic_url, int goods_count) {
		super();
		this.goods_id = goods_id;
		this.goods_name = goods_name;
		this.goods_color = goods_color;
		this.goods_price = goods_price;
		this.pic_url = pic_url;
		this.goods_count = goods_count;
	}
	public Goods() {
		super();
	}
	
}
