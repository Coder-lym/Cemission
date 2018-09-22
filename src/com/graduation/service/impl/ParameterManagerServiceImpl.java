package com.graduation.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.experimental.theories.suppliers.TestedOn;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.graduation.entity.ParameterManager;
import com.graduation.mapper.ParameterManagerMapper;
import com.graduation.service.ParameterManagerService;

@Service

public class ParameterManagerServiceImpl implements ParameterManagerService{

	@Autowired
	private ParameterManagerMapper parameterManagerMapper;
	
	@Override
	public List<ParameterManager> selectParameter() {
		
		return parameterManagerMapper.selectParameter();
	}
	
	@Override
	public ParameterManager findParameterById(int id) {
		
		return parameterManagerMapper.findParameterById(id);
	}


	@Override
	public void saveParameter(ParameterManager parameterManager) {
		
		 parameterManagerMapper.saveParameter(parameterManager);
	}
	
	@Override
	public void updateParameter(ParameterManager parameterManager) {
		
		parameterManagerMapper.updateParameter(parameterManager);
	}
	
	@Override
	public void deleteParameter(int id) {
		
		parameterManagerMapper.deleteParameter(id);
	}

}
