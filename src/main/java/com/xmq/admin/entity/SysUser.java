package com.xmq.admin.entity;

/*
* 用户类
* */
public class SysUser {

    /*用户名称*/
    private String userName;

    /*用户的登录密码*/
    private String password;

    /*用户描述*/
    private String describe;


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }
}
