package com.shop.dao;

import com.shop.model.Admin;

public interface IAdminDao {
	//验证后台超级管理员登录
	public Admin find (String adminName, String adminPwd);	
}
