package com.shop.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.shop.dao.AreaDao;
import com.shop.dao.impl.AreaDaoImpl;
import com.shop.model.Area;

public class AraeServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AraeServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		String action = request.getParameter("action");
		String provinceCode = request.getParameter("provinceCode");
		String cityCode = request.getParameter("cityCode");
		if(action!=null && !action.equals("")){
			List<Area> areas = new ArrayList<Area>();
			AreaDao areaDao = new AreaDaoImpl();
			//判断是否是省过来的请求
			if(action.equals("province")){
				areas = areaDao.findProvince();
			}
			//判断是否是市过来的请求
			if(action.equals("city")){
				areas = areaDao.findCity(provinceCode);
			}
			//判断是否是区过来的请求
			if(action.equals("county")){
				areas = areaDao.findCounty(provinceCode, cityCode);
			}
			//list集合转json使用gson工具包
			Gson gson = new Gson();
			String jsonStr = gson.toJson(areas);
			response.getWriter().print(jsonStr);
		}
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
