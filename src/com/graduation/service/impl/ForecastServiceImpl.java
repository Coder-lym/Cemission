package com.graduation.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.graduation.entity.Cvalue;
import com.graduation.entity.DataPoint;
import com.graduation.mapper.ChartMapper;
import com.graduation.service.ForecastService;
import com.graduation.util.RegressionLine;

@Service
public class ForecastServiceImpl implements ForecastService {
	
	@Autowired
	private ChartMapper chartMapper;

	@Override
	public DataPoint forecast(String code, int year) {
		List<Cvalue> list = chartMapper.findCvalue(code);
		 RegressionLine line = new RegressionLine(); 
		 for(int i = 0;i < list.size();i++){
			 line.addDataPoint(new DataPoint(Integer.parseInt(list.get(i).getYear()),list.get(i).getcValue()));
		 }
	     //预测值计算
	     float cfvalue = line.getA1() * year + line.getA0();
	     
	     DataPoint dataPoint = new DataPoint();
	     dataPoint.setExpression("y=" + line.getA1() + "x+" + line.getA0());
	     dataPoint.setDeviation(""+line.getR());
	     dataPoint.setCvalue(cfvalue);
	     
		return dataPoint;
	}

}
