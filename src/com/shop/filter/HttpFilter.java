package com.shop.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HttpFilter implements Filter {
	
	
	private FilterConfig filterConfig;
	
	//无参的初始化
	public void init() {
		// TODO Auto-generated method stub
	}

	//有参的初始化
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
        this.filterConfig=filterConfig;
        init();
	}

	//获取filterConfig对象
	public FilterConfig getFilterConfig() {
		return filterConfig;
	}

	//将ServletRequest request强制转化为HttpServletRequest，
	//response强制转化为HttpServletResponse
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		doFilter((HttpServletRequest)request,(HttpServletResponse)response,chain);
	}
	
	protected void doFilter(HttpServletRequest request, HttpServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
	}
	
	

	public void destroy() {
		// TODO Auto-generated method stub

	}

}
