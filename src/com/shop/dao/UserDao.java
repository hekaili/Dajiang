package com.shop.dao;

import java.util.List;

import com.shop.model.UserInfo;

public interface UserDao {

	//���
	public boolean addUser(UserInfo userInfo);

	//��֤��¼
    public UserInfo findByParam(String userEmail,String userPwd);

    //����û������ж��û��Ƿ����??
	public boolean check(String userEmail);
	//查询全部
	public List<UserInfo> findByParam() ;
}
