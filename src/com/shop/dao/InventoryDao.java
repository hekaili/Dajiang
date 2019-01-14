package com.shop.dao;

import java.util.List;

import com.shop.model.Inventory;

public interface InventoryDao {

	public List<Inventory> listAll();
	
	public List<Inventory> findById(int goods_id);
	
	public boolean update(Inventory in);
}
