package com.shop.service.impl;

import java.util.List;

import com.shop.dao.InventoryDao;
import com.shop.dao.impl.InventoryDaoImpl;
import com.shop.model.Inventory;
import com.shop.service.InventoryService;

public class InventoryServiceImpl implements InventoryService {

	InventoryDao inventoryDao = new InventoryDaoImpl();
	@Override
	public List<Inventory> listAll() {
		// TODO Auto-generated method stub
		return inventoryDao.listAll();
	}

	@Override
	public List<Inventory> findById(int goods_id) {
		// TODO Auto-generated method stub
		return inventoryDao.findById(goods_id);
	}

	@Override
	public boolean update(Inventory in) {
		// TODO Auto-generated method stub
		return inventoryDao.update(in);
	}

}
