<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="zh-cn">
<head>
	<base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>  
    <link rel="stylesheet" href="admin/css/pintuer.css">
    <link rel="stylesheet" href="admin/css/admin.css">
    <script src="admin/js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />后台管理中心</h1>
  </div>
  <div class="head-l"><a class="button button-little bg-green" href="index.jsp"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;<a class="button button-little bg-red" href="login.jsp"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>操作列表</strong></div>
    <h2><span class="icon-user"></span>用户管理</h2>
  <ul style="display:block">
    <li><a href="Login/show" target="right"><span class="icon-caret-right"></span>用户信息</a></li>
    
  </ul> 
  <h2><span class="icon-user"></span>图书管理</h2>
  <ul style="display:block">
    <li><a href="book/list" target="right"><span class="icon-caret-right"></span>图书信息</a></li>
    <li><a href="class/Lshow" target="right"><span class="icon-caret-right"></span>图书大类</a></li>
    <li><a href="class/Sshow" target="right"><span class="icon-caret-right"></span>图书小类</a></li>
  </ul>   
  <h2><span class="icon-user"></span>订单管理</h2>
  <ul style="display:block">
    <li><a href="orders/showAll" target="right"><span class="icon-caret-right"></span>订单信息</a></li>
    
  </ul>    

</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>

<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="admin/info.jsp" name="right" width="100%" height="100%"></iframe>
</div>

</body>
</html>