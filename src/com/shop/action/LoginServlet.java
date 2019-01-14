package com.shop.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.dao.UserDao;
import com.shop.dao.impl.UserDaoImpl;
import com.shop.model.Admin;
import com.shop.model.UserInfo;
import com.shop.service.IAdminService;
import com.shop.service.impl.AdminServiceIple;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1����ȡ����
		String userEmail=request.getParameter("userEmail");
		String userPwd=request.getParameter("userPwd");
		String chekBox = request.getParameter("auto");
		if (userEmail != null && !userEmail.trim().equals("")) {
			UserDao userDao = new UserDaoImpl();
			UserInfo userInfo = userDao.findByParam(userEmail, userPwd);
			// 2���ж�����û��Ƿ���ڣ�JDBC��
			if (userInfo != null ) {
				if (("on").equals(chekBox)) {
					Cookie cookie = new Cookie("name", userEmail);
					cookie.setMaxAge(60 * 60 * 20 * 14);
					response.addCookie(cookie);
				}
				HttpSession session = request.getSession();
				session.setAttribute("userInfo", userInfo);
				request.getRequestDispatcher("index.jsp").forward(request,response);
			} else {
				response.sendRedirect("account.jsp");
			}
		} else {
			Cookie[] cookies = request.getCookies();
			if (cookies != null && cookies.length > 0) {
				for (Cookie cook : cookies) {
					if (("name").equals(cook.getName())) {
						request.getRequestDispatcher("index.jsp").forward(request,response);
					} else {
						response.sendRedirect("account.jsp");
					}
				}
			}
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
}
