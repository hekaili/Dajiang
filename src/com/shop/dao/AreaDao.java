package com.shop.dao;

import java.util.List;

import com.shop.model.Area;


public interface AreaDao {
	//查询省份
	public List<Area> findProvince();
	//查询城市
	public List<Area> findCity(String provinceCode);
	//查询市区
	public List<Area> findCounty(String provinceCode,String cityCode);
}
