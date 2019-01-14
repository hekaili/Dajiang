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

		//1.获取视图层用户输入的参数
		request.setCharacterEncoding("UTF-8");

		UserDao userDao = new UserDaoImpl();
		String userName=request.getParameter("userName");
		String userEmail=request.getParameter("userEmail");
		String userPwd=request.getParameter("userPwd");
		String userPhone=request.getParameter("userPhone");

		//2.对视图层的参数进行处理（转换各种类型，如果不判断，执行时将会报空指针）

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
