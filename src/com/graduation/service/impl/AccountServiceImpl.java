package com.graduation.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.graduation.entity.Accounts;
import com.graduation.mapper.AccountMapper;
import com.graduation.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService{
	
	@Autowired
	private AccountMapper accountMapper;

	//检测用户名和密码是否有效
	@Override
	public Accounts checkAccount(String account, String password) {
		
		return accountMapper.checkAccount(account, password);
	}
	
	//操作员注册
	@Override
	public void saveAccount(Accounts account) {
		
		accountMapper.saveAccount(account);
	}
	
	//操作员信息查询（全部）
	@Override
	public List<Accounts> findAccounts() {
		
		return accountMapper.findAccounts();
	}
	
	//操作员信息查询（通过id查询）
	@Override
	public Accounts findAccountById(int id) {
		
		return accountMapper.findAccountById(id);
	}

	//操作员管理：查询（包括模糊查询）
	@Override
	public List<Accounts> findAccount(String account, String role) {
		
		return accountMapper.findAccount(account, role);
	}

	//操作员管理：信息修改
	@Override
	public void updateAccount(Accounts account) {
		
		accountMapper.updateAccount(account);
	}

	//操作员管理：操作员删除
	@Override
	public void deleteAccount(int id) {
		
		accountMapper.deleteAccount(id);
	}

	//密码设置：修改密码
	@Override
	public void updatePwd(Accounts account) {
		
		accountMapper.updatePwd(account);
	}
}
