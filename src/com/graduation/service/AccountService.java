package com.graduation.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.graduation.entity.Accounts;

public interface AccountService {

	//检测用户名和密码是否有效
	public Accounts checkAccount(String account,String password);
	
	//操作员注册
	public void saveAccount(Accounts account);
	
	//操作员信息查询（全部）
	public List<Accounts> findAccounts();
	
	//操作员信息查询（通过id查询）
	public Accounts findAccountById(int id);
	
	//操作员管理：查询（包括模糊查询）
	public List<Accounts> findAccount(String account,String role);
	
	//操作员管理：信息修改
	public void updateAccount(Accounts account);
	
	//操作员管理：操作员删除
	public void deleteAccount(int id);
	
	//密码设置：修改密码
	public void updatePwd(Accounts account);
		
}
