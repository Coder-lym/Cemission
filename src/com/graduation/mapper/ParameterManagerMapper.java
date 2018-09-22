package com.graduation.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.graduation.entity.ParameterManager;

/**
 * 参数管理
 * @author Administrator
 *
 */
public interface ParameterManagerMapper {
	
	//参数 查询
	public List<ParameterManager> selectParameter();
	
	//根据id查询
	public ParameterManager findParameterById(@Param(value="id")int id);
	
	//参数添加
	public void saveParameter(ParameterManager parameterManager);
	
	//参数修改
	public void updateParameter(ParameterManager parameterManager);
	
	//参数（碳排放系数）删除
	public void deleteParameter(@Param(value="id")int id);
	
	//查询参数（计算碳排放值所需）
	public List<ParameterManager> findParameterBycvalue();

}
