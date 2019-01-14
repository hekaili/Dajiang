package com.shop.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dao.UserDao;
import com.shop.dao.impl.UserDaoImpl;

public class CheckServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		
		String userEmail=request.getParameter("userEmail");
		String pd = request.getParameter("pd");
		
		if(pd.equals("userEmail")){
			if(userEmail.equals("")){
				response.getWriter().print("閭涓嶈兘涓虹┖锛�");
			}else{
				UserDao userDao = new UserDaoImpl();
				boolean flag =userDao.check(userEmail);
				System.out.println(flag);
				if(flag){
					response.getWriter().print("閭涓嶅瓨鍦ㄥ彲浣跨敤");
				}else{
					response.getWriter().print("閭宸插瓨鍦�");
				}
			}
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
