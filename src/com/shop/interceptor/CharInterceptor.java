package com.shop.interceptor;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class CharInterceptor implements Interceptor{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init() {
		
	}

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		Map<String,Object> application = ServletActionContext.getContext().getApplication();
		String charnext = (String) application.get("charecord");
		if(charnext != null){
			List<String> list = new ArrayList<String>();
			list.add("sb");
			list.add("SB");
			list.add("²ÝÄàÂí");
			list.add("Éµ¹·");
			for(String str : list){
				charnext =charnext.replace(str, "*******");
				application.put("chars", charnext);
			}
			return arg0.invoke();
		}else{
			return arg0.invoke();
		}
		
	}

}
