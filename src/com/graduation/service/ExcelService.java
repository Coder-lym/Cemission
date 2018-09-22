package com.graduation.service;

import java.io.InputStream;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;

public interface ExcelService {

	//Excel导入
	public void importExcel(InputStream in,MultipartFile file)throws Exception;
	
	//Excel导出
	public XSSFWorkbook exportExcel(String excelName)throws Exception;
}
