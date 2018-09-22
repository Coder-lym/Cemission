package com.graduation.entity;
/**
 * 碳排放值实体类
 * @author Administrator
 *
 */
public class Cvalue {

	private int id;
	private String code;//县（区）代码
	private String county;//县（区）
	private String year;//年份
	private float cValue;//碳排放值
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getCounty() {
		return county;
	}
	public void setCounty(String county) {
		this.county = county;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public float getcValue() {
		return cValue;
	}
	public void setcValue(float cValue) {
		this.cValue = cValue;
	}
}
