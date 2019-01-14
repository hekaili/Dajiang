package com.shop.model;

public class Area {
	private String areaCode;
	private String provinceCode;
	private String provinceName;
	private String cityCode;
	private String cityName;
	private String countyCode;
	private String countyName;
	public String getAreaCode() {
		return areaCode;
	}
	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}
	public String getProvinceCode() {
		return provinceCode;
	}
	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
	}
	public String getProvinceName() {
		return provinceName;
	}
	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getCountyCode() {
		return countyCode;
	}
	public void setCountyCode(String countyCode) {
		this.countyCode = countyCode;
	}
	public String getCountyName() {
		return countyName;
	}
	public void setCountyName(String countyName) {
		this.countyName = countyName;
	}
	public Area(String areaCode, String provinceCode, String provinceName,
			String cityCode, String cityName, String countyCode,
			String countyName) {
		super();
		this.areaCode = areaCode;
		this.provinceCode = provinceCode;
		this.provinceName = provinceName;
		this.cityCode = cityCode;
		this.cityName = cityName;
		this.countyCode = countyCode;
		this.countyName = countyName;
	}
	public Area() {
		super();
	}
	
	
}
