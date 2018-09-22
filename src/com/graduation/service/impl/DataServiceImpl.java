package com.graduation.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.graduation.entity.QuanShengData;
import com.graduation.mapper.DataMapper;
import com.graduation.service.DataService;
/**
 * 数据相关service
 * @author Administrator
 *
 */
@Service
public class DataServiceImpl implements DataService {
	
	@Autowired
	private DataMapper dataMapper;

	//查询所有数据
	@Override
	public List<QuanShengData> findData() {
		
		return dataMapper.findData();
	}

	@Override
	public void saveData(QuanShengData qsdata) {
		
		dataMapper.saveData(qsdata);
	}

}
