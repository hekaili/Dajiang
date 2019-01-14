package com.shop.dao;

import java.util.List;

import com.shop.model.Area;


public interface AreaDao {
	//��ѯʡ��
	public List<Area> findProvince();
	//��ѯ����
	public List<Area> findCity(String provinceCode);
	//��ѯ����
	public List<Area> findCounty(String provinceCode,String cityCode);
}
