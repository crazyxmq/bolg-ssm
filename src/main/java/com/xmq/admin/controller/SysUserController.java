package com.xmq.admin.controller;



import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * 后台用户的类
 * */

@Controller
public class SysUserController {


    @RequestMapping("/main")
    public String toMain(){
        return "index";
    }
}
