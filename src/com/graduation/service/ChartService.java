package com.graduation.service;

import java.util.List;

import org.jfree.chart.JFreeChart;

import com.graduation.entity.Cvalue;
import com.graduation.entity.QuanShengData;

/**
 * 图表相关业务层
 * @author Administrator
 *
 */
public interface ChartService {

	public List<Cvalue> findCvalue(String code);
	
	public JFreeChart createFoldLine(List<Cvalue> list);
	
	//查询所有县（区）名称
	public List<QuanShengData> findCounty();
}
