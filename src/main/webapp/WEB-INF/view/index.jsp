<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/head.jsp"%>
<html>
<head>
    <title>后台管理系统</title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="description" content=" " />
    <meta name="keywords" content=" " />
</head>
<body>
<!-- 头部 -->
<div class="header clearfix">
    <ul class="fr">
        <li class="dmovo_js">
            <i class="iconin icon_h_xt"></i>系统设置
            <div class="poptopbar_name dmbox">
                <a href="pages/admin.html">
                    <i class="iconin icon_name4"></i>管理员
                </a>
            </div>
        </li>
        <li class="dmovo_js">
            <i class="iconin icon_h_name"></i>Admin
            <div class="poptopbar_name dmbox">
                <a href="pages/person.html">
                    <i class="iconin icon_name1"></i>个人资料
                </a>
                <a href="javascript:;" id="passwordModalA">
                    <i class="iconin icon_name2"></i>修改密码
                </a>
                <a href="javascript:;">
                    <i class="iconin icon_name3"></i>退出登录
                </a>
            </div>
        </li>
    </ul>
</div>
<!-- 头部 -->
<!-- 左边 -->
<div class="left">
    <div class="left_top">
        <span class="logo"></span>后台管理
    </div>
    <div class="nav_title">导航</div>
    <div class="nav">
        <div class="section section_js">
            <h3 class="active h3 nav_h3_js">
                <a href="<%=basePath%>user/rest.do?url=home">
                    <i class="icon icon_nav1"></i>
                    <span>首页</span>
                </a>
            </h3>
        </div>

        <div class="section section_js">
            <h3 class="h3 nav_h3_js">
                <a href="javascript:;">
                    <i class="icon icon_nav2"></i>
                    <i class="icon icon_down"></i>
                    <span class="txt_nav">用户</span>
                </a>
            </h3>
            <ul class="clearfix">
                <li class="nav_li_js">
                    <a href="pages/user.html">
                        <span>>> 用户列表</span>
                    </a>
                </li>
                <li class="nav_li_js">
                    <a href="pages/attest.html">
                        <span>>> 用户认证</span>
                    </a>
                </li>
            </ul>
        </div>
       <%-- <c:forEach items="${data}" var="sysMenu">
            <div class="section section_js">
                <h3 class="h3 nav_h3_js">
                    <a >
                        <i class="icon icon_nav2"></i>
                        <i class="icon icon_down"></i>
                        <span class="txt_nav">${sysMenu.menuName}</span>
                    </a>
                </h3>
                <ul class="clearfix">
                    <c:forEach items="${sysMenu.child}" var="child_sysMenu">
                        <li class="nav_li_js">
                            <a  onclick="changeMenu('${child_sysMenu.url}')">
                                <span> ${child_sysMenu.menuName}</span>
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </c:forEach>--%>

    </div>
</div>
<!-- 左边 -->
<!-- body 开始 -->
<div class="body">
    <iframe id="if_frame" width="100%" height="95%" frameborder="0"></iframe>
</div>
<!--body 结束-->
<link href="<%=basePath%>assets/css/body.css" rel="stylesheet" />
<%--<script src="<%=basePath%>assets/js/module/common/user.js" type="text/javascript"></script>--%>
<script type="text/javascript">
    $(function(){
        // alert(2222);
        // document.getElementById("if_frame").src="http://www.baidu.com";

    })

    function changeMenu(menu_url) {
        document.getElementById("if_frame").src="<%=basePath%>"+menu_url;
    }

</script>

</body>
</html>