package com.shop.service;

import java.util.List;

import com.shop.model.UserInfo;

public interface UserService {

	//���
	public boolean addUser(UserInfo userInfo);

	//��֤��¼
    public UserInfo findByParam(String userName,String pwd);
	//查询全部
	public List<UserInfo> findByParam() ;
}
