package com.shop.action;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.model.Admin;
import com.shop.service.IAdminService;
import com.shop.service.impl.AdminServiceIple;

public class AdminLoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");

		String adminName = req.getParameter("name");
		/*adminName = new String(adminName.getBytes("iso8859-1"), "utf-8");*/
		String adminPwd = req.getParameter("pwd");
		IAdminService iadmin = new AdminServiceIple();
		Admin admin = iadmin.checkAdminService(adminName, adminPwd);
		System.out.printf(adminName, adminPwd);
		System.out.println(admin); 

		if(admin!=null) {
			resp.sendRedirect("/E-shop/hou/index.html");
		} else {
			resp.getWriter().write("<h1>账户或密码错误！</h1>");
		}
	}

}
