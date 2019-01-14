package com.shop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.shop.dao.AreaDao;
import com.shop.model.Area;
import com.shop.util.BaseDao;


public class AreaDaoImpl extends BaseDao implements AreaDao {
	Connection con = null;
	PreparedStatement pre = null;
	ResultSet re = null;
	
	public List<Area> findProvince() {
		// TODO Auto-generated method stub
		List<Area> list = new ArrayList<Area>();
		try {
			con = getCon();
			String sql = "select province_code,province_name from t_area where city_code is null and county_code is null";
			pre = con.prepareStatement(sql);
			re = pre.executeQuery();
			while(re.next()){
				Area area = new Area();
				area.setProvinceCode(re.getString(1));
				area.setProvinceName(re.getString(2));
				list.add(area);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(re, pre, con);
		}
		return list;
	}

	public List<Area> findCity(String provinceCode) {
		// TODO Auto-generated method stub
		List<Area> list = new ArrayList<Area>();
		try {
			con = getCon();
			String sql = "select city_code,city_name from t_area where province_code=? and city_code is not null and county_code is null";
			pre = con.prepareStatement(sql);
			pre.setString(1, provinceCode);
			re = pre.executeQuery();
			while(re.next()){
				Area area = new Area();
				area.setCityCode(re.getString(1));
				area.setCityName(re.getString(2));
				list.add(area);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(re, pre, con);
		}
		return list;
	}

	public List<Area> findCounty(String provinceCode, String cityCode) {
		// TODO Auto-generated method stub
		List<Area> list = new ArrayList<Area>();
		try {
			con = getCon();
			String sql = "select county_code,county_name from t_area where province_code=? and city_code=? and county_code is not null";
			pre = con.prepareStatement(sql);
			pre.setString(1, provinceCode);
			pre.setString(2, cityCode);
			re = pre.executeQuery();
			while(re.next()){
				Area area = new Area();
				area.setCountyCode(re.getString(1));
				area.setCountyName(re.getString(2));
				list.add(area);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(re, pre, con);
		}
		return list;
	}

}
