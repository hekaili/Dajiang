package com.shop.service.impl;

import java.util.List;

import com.shop.dao.UserDao;
import com.shop.dao.impl.UserDaoImpl;
import com.shop.model.UserInfo;
import com.shop.service.UserService;

public class UserServiceImpl implements UserService {

	UserDao userDao = new UserDaoImpl();

	public boolean addUser(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return userDao.addUser(userInfo);
	}

	public UserInfo findByParam(String userName, String pwd) {
		// TODO Auto-generated method stub
		return userDao.findByParam(userName, pwd);
	}

	@Override
	public List<UserInfo> findByParam() {
		// TODO Auto-generated method stub
		return userDao.findByParam();
	}

}
