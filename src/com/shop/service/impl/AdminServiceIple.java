package com.shop.service.impl;

import com.shop.dao.IAdminDao;
import com.shop.dao.impl.AdminDaoIple;
import com.shop.model.Admin;
import com.shop.service.IAdminService;

public class AdminServiceIple implements IAdminService{
	
	IAdminDao admin = new AdminDaoIple();

	@Override
	public Admin checkAdminService(String adminName, String adminPwd) {
		return admin.find(adminName, adminPwd);
	}

}
