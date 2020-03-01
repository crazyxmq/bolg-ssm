<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title></title>
</head>

<%-----------------------------------------css区------------------------------------------------------------------------------%>
<link href="<%=basePath%>assets/css/common.css" rel="stylesheet" />
<link href="<%=basePath%>assets/js/public/bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="<%=basePath%>assets/css/public.css" rel="stylesheet" />
<link  href="<%=basePath%>assets/js/public/bootstrap/css/bootstrap-table.css" rel="stylesheet" />
<link href="<%=basePath%>assets/js/public/bootstrap/css/bootstrap-treetable.css" rel="stylesheet" />
<link href="<%=basePath%>assets/js/public/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet" />
<link href="<%=basePath%>assets/js/public/daterangepicker/daterangepicker.min.css" rel="stylesheet" />
<link href="<%=basePath%>assets/css/datepicker.css" rel="stylesheet" />


<link href="<%=basePath%>assets/css/home.css" rel="stylesheet" />

<%-----------------------------------------js区------------------------------------------------------------------------------%>
<script src="<%=basePath%>assets/js/public/jquery/jquery.min.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/js/public/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/js/public/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/js/public/daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/js/public/bootstrap/js/datepicker.js" type="text/javascript"></script>
<!--表格 -->
<script src="<%=basePath%>assets/js/public/bootstrap/js/bootstrap-table.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/js/public/bootstrap/js/bootstrap-table-zh-CN.min.js" type="text/javascript"></script>
<!--树形表格 -->
<script src="<%=basePath%>assets/js/public/bootstrap/js/bootstrap-treetable.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/js/public/bootstrap/js/bstime.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/js/module/common/common.js" type="text/javascript"></script>

<!--[if lt IE 9]>
<script src="<%=basePath%>assets/js/public/html5shiv/3.7.0/html5shiv.js" type="text/javascript"></script>
<script src="<%=basePath%>assets/js/public/respond.js/1.4.2/respond.min.js" type="text/javascript"></script>
<![endif]-->
<%--<script src="<%=basePath%>index.js" type="text/javascript"></script>--%>

</html>