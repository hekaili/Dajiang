package com.shop.service;

import com.shop.model.Admin;

public interface IAdminService {
	//检验后台超级管理员登录
	public Admin checkAdminService(String adminName, String adminPwd);
}
