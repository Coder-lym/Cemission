package com.graduation.entity;

/**
 * 用户实体类
 */
public class Accounts {
    private int id;
    private String userName;
    private String passWord;
    private String oldPwd;
	private String role;

    public void setId(int id){this.id = id;}

    public int getId() {
        return id;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getRole() {
        return role;
    }

    public void setUserName(String userName){
        this.userName = userName;
    }
    public String getUserName() {
        return userName;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getPassWord() {
        return passWord;
    }
    
    public String getOldPwd() {
    	return oldPwd;
    }
    
    public void setOldPwd(String oldPwd) {
    	this.oldPwd = oldPwd;
    }
}
