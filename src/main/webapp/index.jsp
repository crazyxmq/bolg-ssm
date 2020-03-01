<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>后台管理系统</title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <link href="assets/css/common.css" rel="stylesheet" />
    <link href="assets/css/login.css" rel="stylesheet" />
    <script src="assets/js/public/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
</head>
<body>
<div class="head">后台管理系统</div>
<div class="box">
    <div class="title">
        <div class="error_info"><i class="icon_info"></i><span class="info_txt"></span></div>
    </div>
    <div class="cont">
        <div class="input_box" id="account">
            <i class="icon_erro"></i>
            <input type="text" class="input" name="userName" placeholder="请输入账号">
        </div>
        <div class="input_box mt1" id="password">
            <i class="icon_erro"></i>
            <input type="password" class="input" name="userPassword" placeholder="请输入密码">
        </div>
        <div class="button_box mt1">
            <a href="javascript:;" class="button" id="submit">登录</a>
        </div>
    </div>
</div>
<div class="foot">Copyright&nbsp;&nbsp;&copy;&nbsp;&nbsp;2017&nbsp;&nbsp;XXX有限公司&nbsp;&nbsp;版权所有</div>
<script type="text/javascript">
    var formData = new FormData();
    $("#submit").off("click");
    $("#submit").on("click",function(){
        var account = $.trim($("#account input").val());
        var password = $.trim($("#password input").val());
        var erro_text = '';
        if(account == ''){
            $("#account").addClass('error');
            erro_text = '账号不能为空!'
            formData.append("userName",account);
            formData.append("userPassword",password);
        }
        if(password == ''){
            $("#password").addClass('error');
            erro_text = erro_text + ' ' + '密码不能为空!'
        }
        if(erro_text != ''){
            $('.title').addClass('error');
            $('.title').find('.info_txt').text(erro_text);
        }else{
            $.ajax({
                async:false,
                url:"<%=basePath%>user/userLogin.do",
                type:"post",
                dataType:"json",
                contentType:"application/json;charset=utf-8",
                data:JSON.stringify({
                    "userName":account,
                    "password":password
                }),
                success:function (data) {

                    window.location.href="<%=basePath%>menu/list.do";
                   /* if(data.isSuccess == true){

                    }else{
                        $('.title').addClass('error');
                        $('.title').find('.info_txt').text(data.msg);
                    }*/
                },
                error:function (data) {
                    alert(data.msg);
                }
            });
        }
    });
    $(".input").off('focus');
    $(".input").on('focus',function(){
        $(this).parent('.input_box').removeClass('error');
        $('.title').removeClass('error');
        $('.title').find('.info_txt').text('');
    });
</script>
</body>
</html>