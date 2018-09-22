package com.graduation.mapper;

import java.util.List;

import com.graduation.entity.Cvalue;
import com.graduation.entity.QuanShengData;

/**
 * 图表相关mapper
 * @author Administrator
 *
 */
public interface ChartMapper {
	
	//根据县（区）代码查询碳排放值
	public List<Cvalue> findCvalue(String code);
	
	//查询所有县（区）名称
	public List<QuanShengData> findCounty();
}
