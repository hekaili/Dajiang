package com.shop.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.dao.GoodsDao;
import com.shop.dao.impl.GoodsDaoImpl;
import com.shop.model.Goods;
import com.shop.model.Inventory;
import com.shop.model.UserInfo;
import com.shop.service.GoodsService;
import com.shop.service.InventoryService;
import com.shop.service.impl.GoodsServiceImpl;
import com.shop.service.impl.InventoryServiceImpl;

public class CheckoutServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		GoodsService goodsService = new GoodsServiceImpl();
		String[] bids = request.getParameterValues("id");
		HttpSession session = request.getSession();
		//从session中取出购物车
		Map<String,Goods> cart = (Map<String, Goods>) session.getAttribute("cart");
		//如果没有购物车，则创建一个
		if(cart == null){
			cart = new HashMap<String, Goods>();
			session.setAttribute("cart", cart);
		}
		//在购物车中遍历将要添加的商品，如果已经存在，则数量加一
		//否则设置数量为1，存在购物车
		for(String bid:bids){
			Goods goods_cart = cart.get(bid);
			if(goods_cart != null){
				goods_cart.setGoods_count(goods_cart.getGoods_count()+1);
			}else{
				Goods goods = goodsService.findGoods(Integer.valueOf(bid));
				goods.setGoods_count(1);
				cart.put(bid, goods);
			}
			
		}
	
		response.sendRedirect("checkout.jsp");
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}


}
