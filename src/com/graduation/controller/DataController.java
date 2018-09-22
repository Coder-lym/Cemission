package com.graduation.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.graduation.entity.QuanShengData;
import com.graduation.service.DataService;

/**
 * 数据相关controller
 * @author Administrator
 *
 */
@Controller
@RequestMapping("data")
public class DataController {

	@Autowired
	private DataService dataService;
	
	@RequestMapping(value="show")
	public String showData(Model model){
		List<QuanShengData> qsData = dataService.findData();
		model.addAttribute("qsData", qsData);
		return "datashow";
	}
	
	/*
	 * 数据录入
	 */
	@RequestMapping(value="save")
	public String saveData(QuanShengData qsdata,Model model,HttpServletRequest request){
		boolean res = false;
		if(qsdata != null){
			dataService.saveData(qsdata);
			res = true;
			model.addAttribute("res", res);
		}else{
			
			model.addAttribute("res", res);
		}
		return "datasave";
	}
}
