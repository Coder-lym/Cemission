package com.graduation.service;

import com.graduation.entity.DataPoint;

/**
 * 预测功能业务层
 * @author Administrator
 *
 */
public interface ForecastService {

	public DataPoint forecast(String code,int year);
}
