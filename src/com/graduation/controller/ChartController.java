package com.graduation.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.JFreeChart;
import org.jfree.chart.servlet.ServletUtilities;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.graduation.entity.Cvalue;
import com.graduation.entity.QuanShengData;
import com.graduation.service.ChartService;

/**
 * 图表相关控制层
 * @author Administrator
 *
 */
@Controller
@RequestMapping("chart")
public class ChartController {
	
	@Autowired
	private ChartService chartService;
	
	@RequestMapping(value="findCounty")
	public String findCounty(HttpServletRequest request,String skip,Model model){
		
		List<QuanShengData> list = chartService.findCounty();
		model.addAttribute("county", list);
		if("chart".equals(skip)){
			return "chart";
		}else if("forecast".equals(skip)){
			return "yuce";
		}else{
			return "/";
		}
	}

	@RequestMapping(value="getChart")
	public ModelAndView getChart(HttpServletRequest request,HttpServletResponse response,ModelMap modelMap,String code,Model model) throws IOException{
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
		return new ModelAndView("chart",modelMap);
	}
}

