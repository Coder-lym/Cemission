package com.graduation.entity;
/**
 * 一元线性回归算法，坐标点实体类（可实现统计指标的预测）
 * @author Administrator
 *
 */
public class DataPoint {

	public float x;//x轴坐标
	
	public float y;//y轴坐标
	
	private String expression;//回归线公式
	private String deviation;//误差
	private float cvalue;//预测计算值
	
	public String getExpression() {
		return expression;
	}

	public void setExpression(String expression) {
		this.expression = expression;
	}

	public String getDeviation() {
		return deviation;
	}

	public void setDeviation(String deviation) {
		this.deviation = deviation;
	}

	public float getCvalue() {
		return cvalue;
	}

	public void setCvalue(float cvalue) {
		this.cvalue = cvalue;
	}

	public DataPoint(){
		
	}
	public DataPoint(float x,float y){
		this.x = x;
		this.y = y;
	}
}
