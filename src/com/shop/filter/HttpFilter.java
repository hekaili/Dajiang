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
	
	//�޲εĳ�ʼ��
	public void init() {
		// TODO Auto-generated method stub
	}

	//�вεĳ�ʼ��
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
        this.filterConfig=filterConfig;
        init();
	}

	//��ȡfilterConfig����
	public FilterConfig getFilterConfig() {
		return filterConfig;
	}

	//��ServletRequest requestǿ��ת��ΪHttpServletRequest��
	//responseǿ��ת��ΪHttpServletResponse
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
