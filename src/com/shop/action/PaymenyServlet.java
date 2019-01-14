package com.shop.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.model.Goods;
import com.shop.model.Order;
import com.shop.model.UserInfo;
import com.shop.service.GoodsService;
import com.shop.service.OrderService;
import com.shop.service.impl.GoodsServiceImpl;
import com.shop.service.impl.OrderServiceImpl;

public class PaymenyServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");//设置日期格式
		String a = df.format(new Date());
		long order_number = Long.valueOf(a);
		
		String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
		String phone = request.getParameter("phone");
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String county = request.getParameter("county");
	  
		
		long o_phone = 0;
		if(!phone.equals("") && phone!=null)
			o_phone = Long.valueOf(phone);
		
		//地址
		String o_location=new String((province+city+county).getBytes("ISO-8859-1"),"utf-8");
		//获取支付价格 和 商品名称
		GoodsService goodsService = new GoodsServiceImpl();
		String id = request.getParameter("id");
		Integer i = Integer.valueOf(id);
		Goods goods = goodsService.findGoods(i);
		String goodsName = goods.getGoods_name();
		int pay_price = goods.getGoods_price();
		
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("userInfo");
		int u_id = userInfo.getUserId();
		
		OrderService orderService = new OrderServiceImpl();
		Order order = new Order();
		order.setOrder_number(order_number);
		order.setU_id(u_id);
		order.setO_consignee(name);
		order.setO_phone(o_phone);
		order.setO_location(o_location);
		order.setGoodsName(goodsName);
		order.setPay_price(pay_price);
		
		boolean flag = orderService.addOrder(order);
		
		if(flag){
			List<Order> list = orderService.findOrder(order_number);
			request.setAttribute("list", list);
			request.getRequestDispatcher("order.jsp").forward(request, response);
		}else{
			response.sendRedirect("payment.jsp");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}


}
