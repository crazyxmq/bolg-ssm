package com.xmq.blog.entity;

public class User {

    /*用户名称*/
    private String userName;

    /*用户的登录密码*/
    private String password;

    /*用户的头像*/
    private String img;

    /*用户描述*/
    private String describe;


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }
}
