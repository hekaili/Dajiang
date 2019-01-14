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
	 * �������ļ��ϴ�����
	 * @param file �ϴ����ļ�
	 * @param fileName �ļ���
	 * @return �ļ�·��
	 */
	public String upload(File file,String fileName){
		String successPath = "upload";
		//��ȡ�ļ��ڷ������ϵľ���·��
		String realPath = ServletActionContext.getServletContext().getRealPath(successPath);
		String path = realPath+"\\"+fileName;
		try {
			//�ļ�������
			FileInputStream  in = new FileInputStream(file);
			//�ļ������
			FileOutputStream out = new FileOutputStream(path);
			//����������Ҫ���ϴ�����������ʱ�ļ�д�뵽����ָ�����ļ�����
			byte[] buffer = new byte[1024];
			int length = 0;
			//ͨ��ѭ���Ѷ�������д�뵽�ļ���
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
		//File.separator=��\\��,֧�ֶ໷�����ԣ�linux��
		return successPath+File.separator+fileName;
	}
	
}
