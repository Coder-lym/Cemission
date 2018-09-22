package com.graduation.entity;
/**
 * 碳排放系数
 * @author Administrator
 *
 */
public class ParameterManager {

	private int id;//参数id
	private String parameterName;//参数名称（农作物名称、家畜名称等）
	private String cemissionCoe;//碳排放系数
	private String parameterType;//参数类别（农作物、家畜等）
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getParameterName() {
		return parameterName;
	}
	public void setParameterName(String parameterName) {
		this.parameterName = parameterName;
	}
	public String getCemissionCoe() {
		return cemissionCoe;
	}
	public void setCemissionCoe(String cemissionCoe) {
		this.cemissionCoe = cemissionCoe;
	}
	public String getParameterType() {
		return parameterType;
	}
	public void setParameterType(String parameterType) {
		this.parameterType = parameterType;
	}
	
}
