package com.graduation.service.impl;

import java.util.List;

import org.jfree.chart.JFreeChart;
import org.jfree.data.category.DefaultCategoryDataset;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.graduation.entity.Cvalue;
import com.graduation.entity.QuanShengData;
import com.graduation.mapper.ChartMapper;
import com.graduation.service.ChartService;
import com.graduation.util.FoldLine;
/**
 * 图表相关业务层接口实现类
 * @author Administrator
 *
 */
@Service
public class ChartServiceImpl implements ChartService {
	
	@Autowired
	private ChartMapper chartMapper;

	@Override
	public List<Cvalue> findCvalue(String code) {
		
		List<Cvalue> list = chartMapper.findCvalue(code);
		return list;
	}
	
	@Override
	public List<QuanShengData> findCounty() {
		List<QuanShengData> qs = chartMapper.findCounty();
		return qs;
	}

	@Override
	public JFreeChart createFoldLine(List<Cvalue> list) {
		//获取折线图数据源
		DefaultCategoryDataset dataset = getDataSet(list);
		//从折现图工具类中获取创建完成的折线图
		JFreeChart chart = FoldLine.createFoldLine(dataset);
		return chart;
	}
	public static DefaultCategoryDataset getDataSet(List<Cvalue> list){
		//创建数据集
		DefaultCategoryDataset dataset = new DefaultCategoryDataset();
		//添加数据
		for(int i=0;i<list.size();i++){
			dataset.addValue(list.get(i).getcValue(), list.get(i).getCounty(), list.get(i).getYear());
		}
		return dataset;
	}

}
