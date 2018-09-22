package com.graduation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 帮助跳转controller
 * @author Administrator
 *
 */
@Controller
@RequestMapping("skip")
public class SkipController {
	
	@RequestMapping(value="skipType")
	public String skip(String type,Model model){
		if("register".equals(type)){
			return "register";
		}else if("excel".equals(type)){
			model.addAttribute("main", true);
			return "Excel";
		}else if("pwd".equals(type)){
			return "pwd";
		}else if("data".equals(type)){
			return "datashow";
		}else if("chart".equals(type)){
			return "chart";
		}else{
			return "redirect:/index";
		}
	}
}
