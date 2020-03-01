package com.xmq.admin.controller;



import com.xmq.admin.entity.SysUser;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/*
 * 后台用户的类
 * */

@Controller
@RequestMapping("/user")
public class SysUserController {


    @RequestMapping("/main")
    public String toMain(){
        return "index";
    }


    @RequestMapping(value="userLogin",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> userLogin(HttpServletRequest request, SysUser user) {

        Map map = new HashMap<String,Object>();
        map.put("isSuccess",true);
        System.out.println(user.getUserName()+"-----"+user.getPassword());
        return map;
    }

}
