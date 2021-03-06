﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>Contact</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://apps.bdimg.com/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />


<!-- start menu -->
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="js/simpleCart.min.js"> </script>
</head>
<body>
<!--header-->
<div class="header">
	<div class="header-top">
		<div class="container">
			<div class="search">
				<form>
					<input type="text" placeholder="搜索">
					<input type="submit" value="Go">
				</form>
			</div>
			<div class="header-left">
				<ul>
					<li ><a href="login.html"  >登陆</a></li>
					<li><a  href="register.html"  >注册</a></li>
					<li><a class="lock" href="#">admin</a></li>
					<li><a class="lock" href="#">后台管理</a></li>
					<li><a class="lock" href="#">注销</a></li>
				</ul>
				<div class="cart box_1">
					<h3>
						<div class="total">

							<span id="simpleCart_total" >￥<span>10.0</span></span> (<span
								id="simpleCart_quantity">5</span>
							件商品)
						</div>
						<a href="checkout.html">
							<img src="images/cart.png" alt="" /></a>
					</h3>
					<p><a href="#" class="simpleCart_empty">清空购物车</a></p>

				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="container">
		<div class="head-top">
			<div class="logo">
				<a href="index.html"><img src="images/logo1.png" alt=""></a>
			</div>
			<div class=" h_menu4">
				<ul class="memenu skyblue">
					<li class="active grid"><a class="color8" href="index.html">首页</a></li>
					<li><a class="color1" href="products.html">书城</a></li>
					<li><a class="color6" href="contact.html">联系我们</a></li>
				</ul>
			</div>

			<div class="clearfix"> </div>
		</div>
	</div>

</div>

	
<!--content-->
<div class="contact">
			
			<div class="container">
				<h1>联系我们</h1>
			<div class="contact-form">
				
				<div class="col-md-8 contact-grid">
					<form>	
						<input type="text" name="username" placeholder="姓名">
					
						<input type="text" name="email" placeholder="Email">
						<input type="text" name="subject" placeholder="标题">
						
						<textarea cols="77" rows="6"  name="content" placeholder="内容"></textarea>
						<div class="send" align="center">
							<input type="submit" value="提交">
						</div>
					</form>
				</div>
				<div class="col-md-4 contact-in">

						<div class="address-more">
						<h4>地址</h4>
							<p>天天商城</p>
							<p>江苏省南京市</p>
							<p>天天街道28-6号 </p>
						</div>
						<div class="address-more">
						<h4>联系方式</h4>
							<p>Tel:0251120000</p>
							<p>Fax:001-4509-002</p>
							<p>Email:<a href="mailto:contact@example.com"> contact@example.com</a></p>
						</div>
					
				</div>
				<div class="clearfix"> </div>
			</div>

		</div>
		
	</div>
<!--//content-->
<div class="footer">
	<div class="container">
		<div class="footer-top-at">

			<div class="col-md-4 amet-sed">
				<h4>更多</h4>
				<ul class="nav-bottom">
					<li><a href="#">怎样订购</a></li>
					<li><a href="#">FAQ</a></li>
					<li><a href="contact.html">地点</a></li>
					<li><a href="#">运费</a></li>
					<li><a href="#">会员</a></li>
				</ul>
			</div>
			<div class="col-md-4 amet-sed ">
				<h4>联系我们</h4>

				<p>江苏省</p>
				<p>南京市</p>
				<p>办公电话:  +025 995 0792</p>
				<ul class="social">
					<li><a href="#"><i> </i></a></li>
					<li><a href="#"><i class="twitter"> </i></a></li>
					<li><a href="#"><i class="rss"> </i></a></li>
					<li><a href="#"><i class="gmail"> </i></a></li>

				</ul>
			</div>
			<div class="col-md-4 amet-sed">
				<h4>时适订阅</h4>
				<p>加入我们得到最新讯信</p>
				<form>
					<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
					<input type="submit" value="订阅">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="footer-class">
		<p >Copyright &copy; 2017.天天商城 All rights reserved.</p>
	</div>
</div>
</body>
</html>
			