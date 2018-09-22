package com.graduation.mapper;

import java.util.List;

import com.graduation.entity.QuanShengData;

/**
 * excel导入导出
 * @author Administrator
 *
 */
public interface ExcelMapper {

	//Excel导入
	public void insertExcel(List<QuanShengData> list);
	
	/*
	 * Excel导出：
	 * 	方法与DataMapper中查询所有数据方法相同，所以有ExcelService直接调用DataMapper中的方法
	 */
}
