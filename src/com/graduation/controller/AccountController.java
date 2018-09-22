package com.graduation.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.graduation.entity.Accounts;
import com.graduation.service.AccountService;

@Controller
@RequestMapping("account")
public class AccountController {
	
	@Autowired
	private AccountService accountService;
	
	@RequestMapping(value="accountLogin")
	public String login(Accounts account,Model model,HttpServletRequest request){
		if(account.getUserName() != "" && account.getPassWord() != ""){
			Accounts resultAccount = accountService.checkAccount(account.getUserName(), account.getPassWord());
			if(resultAccount != null){//登录成功
				request.getSession().setAttribute("account", resultAccount);
				return "redirect:/index";
			}else{//登录失败
				model.addAttribute("result", "fail");
				return "login";
			}
		}else{
			model.addAttribute("result", "null");
			return "login";
		}
	}
	
	@RequestMapping(value="registerAccount")
	public String register(Accounts account,Model model,String newpassWord){
			boolean resultRes = false;
			if(account.getUserName() != null && account.getPassWord() != null 
											&& !"请选择".equals(account.getRole()) 
											&& account.getUserName() != "" 
											&& account.getPassWord() !="" 
											&& newpassWord.equals(account.getPassWord())){
					accountService.saveAccount(account);
					resultRes = true;
					model.addAttribute("resultRes",resultRes);
			}else{
				model.addAttribute("resultRes",resultRes);
			}
		
		return "register";
	}
	
	@RequestMapping(value="findAccount")
	public String findAccount(Accounts account,Model model){
		if(account.getUserName() != null && account.getRole() != null){
			List<Accounts> list = accountService.findAccount(account.getUserName(), account.getRole());
			model.addAttribute("accounts", list);
			return "AccountManager";
		}else{
			List<Accounts> accounts = accountService.findAccounts();
			model.addAttribute("accounts", accounts);
			return "AccountManager";
		}
	}
	
	@RequestMapping(value="findAccountById")
	public String findAccountById(int id,Model model){
		Accounts account = accountService.findAccountById(id);
		model.addAttribute("accountById", account);
		return "AccountUpdate";
	}
	
	@RequestMapping(value="updateAccount")
	public String updateAccount(Accounts account){
		accountService.updateAccount(account);
		return "redirect:findAccount";
	}
	@RequestMapping(value="deleteAccount")
	public String deleteAccount(int id){
		accountService.deleteAccount(id);
		return "redirect:findAccount";
	}
	
	@RequestMapping(value="updatePwd")
	public String updatePwd(Accounts account,Model model){
		Accounts user = accountService.findAccountById(account.getId());
		boolean resultPwd = false;
		if(account.getOldPwd().equals(user.getPassWord())){//判断旧密码输入是否正确
			accountService.updatePwd(account);
			resultPwd = true;
			model.addAttribute("resultPwd", resultPwd);
			return "pwd";
		}else{
			model.addAttribute("resultPwd", resultPwd);
			return "pwd";
		}
	}
	
	@RequestMapping(value="logout")
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();//让session失效
		return "redirect:/";
	}
}
