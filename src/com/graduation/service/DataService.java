package com.graduation.service;

import java.util.List;

import com.graduation.entity.QuanShengData;

public interface DataService {

	//查询所有数据
	public List<QuanShengData> findData();
	//录入数据操作
	public void saveData(QuanShengData qsdata);
}
