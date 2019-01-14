package com.shop.filter;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginFilter extends HttpFilter{
	private String urls;
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		urls=filterConfig.getInitParameter("noValidate");
	}
	@Override
	protected void doFilter(HttpServletRequest request,
			HttpServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		String path = request.getServletPath();
		String[] Urls=urls.split(",");
		List<String> urlList=Arrays.asList(Urls);
		if(urlList.contains(path)){
			chain.doFilter(request, response);
		}else{
			String name =(String) request.getSession().getAttribute("name");
			if(name!=null && name.equals("")){
				chain.doFilter(request, response);
			}else{
				response.sendRedirect("account.jsp");
			}
		}
	}
}
