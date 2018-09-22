package com.graduation.service;

import java.util.List;
import java.util.Map;

import com.graduation.entity.ParameterManager;

/**
 * 碳排放系数管理
 * @author Administrator
 *
 */
public interface ParameterManagerService {

	//参数查询
	public List<ParameterManager> selectParameter();
	
	//根据id查询
	public ParameterManager findParameterById(int id);
	
	//参数添加
	public void saveParameter(ParameterManager parameterManager);
	
	//参数修改
	public void updateParameter(ParameterManager parameterManager);
	
	//参数（碳排放系数）删除
	public void deleteParameter(int id);
	
}
