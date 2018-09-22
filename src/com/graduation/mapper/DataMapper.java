package com.graduation.mapper;

import java.util.List;

import com.graduation.entity.QuanShengData;

/**
 * 数据mapper
 * @author Administrator
 *
 */
public interface DataMapper {

	//查询所有数据
	public List<QuanShengData> findData();
	//录入数据操作
	public void saveData(QuanShengData qsdata);
}
