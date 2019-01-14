package com.shop.model;

public class Inventory {

	private int inventory_id;
	private int goods_id; 
	private int many; 
	private int stock_many;
	
	public Inventory() {
		super();
	}
	public Inventory(int inventory_id, int goods_id, int many, int stock_many) {
		super();
		this.inventory_id = inventory_id;
		this.goods_id = goods_id;
		this.many = many;
		this.stock_many = stock_many;
	}
	public int getInventory_id() {
		return inventory_id;
	}
	public void setInventory_id(int inventory_id) {
		this.inventory_id = inventory_id;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public int getMany() {
		return many;
	}
	public void setMany(int many) {
		this.many = many;
	}
	public int getStock_many() {
		return stock_many;
	}
	public void setStock_many(int stock_many) {
		this.stock_many = stock_many;
	}
	
}
