package com.shop.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dao.UserDao;
import com.shop.dao.impl.UserDaoImpl;
import com.shop.model.UserInfo;

public class AddUser extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//1.��ȡ��ͼ���û�����Ĳ���
		request.setCharacterEncoding("UTF-8");

		UserDao userDao = new UserDaoImpl();
		String userName=request.getParameter("userName");
		String userEmail=request.getParameter("userEmail");
		String userPwd=request.getParameter("userPwd");
		String userPhone=request.getParameter("userPhone");

		//2.����ͼ��Ĳ������д���ת���������ͣ�������жϣ�ִ��ʱ���ᱨ��ָ�룩

		UserInfo userInfo = new UserInfo(userName,userEmail,userPwd,userPhone);

		boolean flag = userDao.addUser(userInfo);
		if(flag){
			request.getRequestDispatcher("account.jsp").forward(request, response);
		}else{
			response.sendRedirect("register.jsp");
		}
     }

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
