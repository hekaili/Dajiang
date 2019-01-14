package com.shop.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport {

	public Map<String,Object> getApplication(){
		return ActionContext.getContext().getApplication();
		
	}
	public Map<String,Object> getSession(){
		return ActionContext.getContext().getSession();
		
	}
	public Map<String,Object> getRequest(){
		return (Map<String, Object>) ActionContext.getContext().get("request");
		
	}
	
	public HttpServletResponse getResponse(){
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=utf-8");
		return response;
		
	}
	
	public String getParameter(String name,int i){
		Map<String,Object> params = ActionContext.getContext().getParameters();
		String param = ((String[])params.get(name))[i].toString();
		return param;
		
	}
	
	/**
	 * 公共的文件上传方法
	 * @param file 上传的文件
	 * @param fileName 文件名
	 * @return 文件路径
	 */
	public String upload(File file,String fileName){
		String successPath = "upload";
		//获取文件在服务器上的绝对路径
		String realPath = ServletActionContext.getServletContext().getRealPath(successPath);
		String path = realPath+"\\"+fileName;
		try {
			//文件输入流
			FileInputStream  in = new FileInputStream(file);
			//文件输出流
			FileOutputStream out = new FileOutputStream(path);
			//下面我们需要把上传到服务器临时文件写入到我们指定的文件夹中
			byte[] buffer = new byte[1024];
			int length = 0;
			//通过循环把二进制书写入到文件里
			while ((length=in.read(buffer))!=-1) {
				out.write(buffer, 0, length);
			}
			in.close();
			out.flush();
			out.close();
		} catch (FileNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		} catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		//File.separator=“\\”,支持多环境语言（linux）
		return successPath+File.separator+fileName;
	}
	
}
