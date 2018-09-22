package com.graduation.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jfree.chart.JFreeChart;
import org.jfree.chart.servlet.ServletUtilities;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.graduation.entity.Cvalue;
import com.graduation.entity.DataPoint;
import com.graduation.entity.QuanShengData;
import com.graduation.service.ChartService;
import com.graduation.service.ForecastService;

/**
 * 预测功能controller层
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value="yuce")
public class ForecastController {
	
	@Autowired
	private ForecastService forecastService;
	@Autowired
	private ChartService chartService;

	@RequestMapping(value="forecast")
	public String forecast(String code,String year,Model model,ModelMap modelMap,HttpServletRequest request) throws IOException{
		boolean v = false;
		if(code != null && year != null){
			DataPoint dataPoint = forecastService.forecast(code, Integer.parseInt(year));
			model.addAttribute("dataPoint", dataPoint);
			
			List<Cvalue> cv = chartService.findCvalue(code);
			//在业务层获取创建的折线图
			JFreeChart chart = chartService.createFoldLine(cv);
			//将图形转换为图片传到chart.jsp
			String fileName = ServletUtilities.saveChartAsJPEG(chart, 700, 400,
		            null, request.getSession());
			String chartURL = request.getContextPath() + "/chart?filename="
		            + fileName;
			modelMap.put("chartLineURL", chartURL);
			
			List<QuanShengData> list = chartService.findCounty();
			model.addAttribute("county", list);
		}else{
			model.addAttribute("v", v);
		}
		return "yuce";
		
	}
}
