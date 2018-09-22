package com.graduation.controller;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.graduation.entity.QuanShengData;
import com.graduation.service.DataService;
import com.graduation.service.ExcelService;

/**
 * Excel导入导出
 * @author Administrator
 *
 */
@Controller
@RequestMapping("excel")
public class ExcelController {
	
	@Autowired
	private ExcelService excelService;
	@Autowired
	private DataService dataService;

	/*
	 * 导入Excel
	 */
	@RequestMapping(value="importExcel")
	public String imExcel(HttpServletRequest request,Model model)throws Exception{
//		int adminId = 1;
		//获取上传的文件
		MultipartHttpServletRequest multipar = (MultipartHttpServletRequest)request;
		MultipartFile file = multipar.getFile("file");
//		String month = request.getParameter("month");
		InputStream in = file.getInputStream();
		//数据导入
		excelService.importExcel(in, file);
		in.close();
		//查询导入数据显示在页面
		List<QuanShengData> qsData = dataService.findData();
		model.addAttribute("qsData", qsData);
		return "datashow";
	}
	
	/*
	 * 导出Excel
	 */
	@RequestMapping(value="exportExcel")
	public void export(HttpServletRequest request,HttpServletResponse response) throws Exception{
		String excelName = request.getParameter("excelName");
		if(excelName != ""){
			response.reset();//清楚buffer缓存
			Map<String,Object> map = new HashMap<String,Object>();
			//指定下载的文件名
			response.setHeader("Content-Disponsition", "attachment;filename="+excelName+".xlsx");
			response.setContentType("application/vnd.ms-excel;charset=UTF-8");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Cache-Control", "no-cache");
			response.setDateHeader("Expires", 0);
			XSSFWorkbook workbook = null;
			//导出Excel对象
			workbook = excelService.exportExcel(excelName);
			OutputStream output;
			try{
				output = response.getOutputStream();
				BufferedOutputStream bufferedOutput = new BufferedOutputStream(output);
				bufferedOutput.flush();
				workbook.write(bufferedOutput);
				bufferedOutput.close();
				
			}catch(IOException e){
				e.printStackTrace();
			}
			
		}
		
	}
	
}
