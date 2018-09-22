package com.graduation.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.graduation.entity.ParameterManager;
import com.graduation.service.ParameterManagerService;

/**
 * 碳排放系数管理
 * @author Administrator
 *
 */
@Controller
@RequestMapping("parameterManager")
public class ParameterManagerController {

	@Autowired
	private ParameterManagerService parameterManagerService;
	
	@RequestMapping(value="selectParameter")
	public String selectParameter(Model model){
		
		List<ParameterManager> list = parameterManagerService.selectParameter();
		model.addAttribute("list", list);
		return "parameterManager";
	}
	
	@RequestMapping(value="findparameterById")
	public String findParameterById(int id,Model model){
		
		ParameterManager parameterManager = parameterManagerService.findParameterById(id);
		model.addAttribute("parameterById", parameterManager);
		
		return "parameterUpdate";
	}
	
	@RequestMapping(value="insertParameter")
	public String saveParameter(ParameterManager parameterManager,Model model,HttpServletRequest request){
		if(parameterManager.getParameterName() != null && parameterManager.getCemissionCoe() != null && parameterManager.getParameterType() != null){
			parameterManagerService.saveParameter(parameterManager);
			List<ParameterManager> list = parameterManagerService.selectParameter();
			model.addAttribute("list", list);
		}
		return "parameterManager";
	}
	
	@RequestMapping(value="updateParameter")
	public String updateParameter(ParameterManager parameterManager,Model model,HttpServletRequest request){
		
		parameterManagerService.updateParameter(parameterManager);
		List<ParameterManager> list = parameterManagerService.selectParameter();
		model.addAttribute("list", list);
		return "parameterManager";
		
	}
	
	@RequestMapping(value="deleteParameter")
	public String deleteParameter(ParameterManager parameterManager,Model model,HttpServletRequest request){
		if(parameterManager.getId() != 0){
			parameterManagerService.deleteParameter(parameterManager.getId());
			List<ParameterManager> list = parameterManagerService.selectParameter();
			model.addAttribute("list", list);
		}
		return "parameterManager";
	}
}
