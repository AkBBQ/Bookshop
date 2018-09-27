<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>商城</title>
<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.css">
<!-- <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /> -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- <script src="http://apps.bdimg.com/libs/jquery/1.11.3/jquery.min.js"></script>
  <script type="text/javascript" src="/bootstrap-3.3.7/js/bootstrap.js"></script> -->

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="New Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
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
						<input type="text" placeholder="搜索"> <input type="submit"
							value="Go">
					</form>
				</div>
				<div class="header-left">
					<ul>
						<li>
							<button type="button" class="btn btn-primary login"
								data-toggle="modal" data-target="#exampleModal"
								data-whatever="@getbootstrap">登陆</button>
						</li>
						<li>
							<button type="button" class="btn btn-primary login"
								data-toggle="modal" data-target="#exampleModal2"
								data-whatever="@getbootstrap">注册</button>
						</li>

						<li style="margin-right:-15px">
							<div style="height: 34px ;padding-left:15px;">
								<c:if test="${sessionScope.userinfo==null}">
									<span style="padding-left:-5px;color: red">未登录</span>
								</c:if>
								<c:if test="${sessionScope.userinfo!=null}">
									<span style="color: white;width:100px">欢迎你:</span>:<a href=""
										id="LoginUserName" style="font-size: 20px; color: green">${sessionScope.userinfo.username}</a>
								</c:if>
							</div>
						</li>
						<li><a class="lock" style="padding-left:15px" href="Login/quitLogin">注销</a></li>
						<li><button type="button" class="btn btn-warning"
								data-toggle="modal" data-target="#exampleModal3"
								data-whatever="@getbootstrap">后台管理</button></li>
								
						<li><button type="button" id="showCartInfo"  class="btn btn-success">订单</button></li>

					</ul>
					<div class="cart box_1">
						<h3>
							<div class="total">

								<span id="simpleCart_total">￥<span>${cartInfo.get(0)}</span></span> (<span
									id="simpleCart_quantity">${cartInfo.get(1)}</span> 件商品)
							</div>
							<a href="javascript:void(0)" id="gotoCart"><img src="images/cart.png" alt="" /></a>
						</h3>
						<!-- <p>
							<a href="#" class="simpleCart_empty">清空购物车</a>
						</p> -->

					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="container">
			<div class="head-top">
				<div class="logo">
					<a href="index.html"><img src="images/logo1.png" alt=""></a>
				</div>
				<div class=" h_menu4">
					<ul class="memenu skyblue">
						<li class="active grid"><a class="color8" href="index">首页</a></li>
						<li><a class="color1" href="book/showList">书城</a></li>
						<li><a class="color6" href="contact.jsp">联系我们</a></li>
					</ul>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>

	</div>







	<div class="banner">
		<div class="container">
			<script src="js/responsiveslides.min.js"></script>
			<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>
			<div id="top" class="callbacks_container">
				<ul class="rslides" id="slider">
					<li>

						<div class="banner-text">
							<h3>用阅读丈量世界</h3>
							<p>春光无限好正是读书时...</p>
							<a href="single.html">更多</a>
						</div>

					</li>
					<li>

						<div class="banner-text">
							<h3>满园春色关不住</h3>
							<p>哈利波特大放送...</p>
							<a href="single.html">更多</a>

						</div>

					</li>
					<li>
						<div class="banner-text">
							<h3>好书特价,知识无价</h3>
							<p>精选图书,3折起...</p>
							<a href="single.html">更多</a>

						</div>

					</li>
				</ul>
			</div>

		</div>
	</div>

	<!--content-->
	<div class="content">
		<div class="container">
			<div class="content-top">
				<h1>热卖图书</h1>
				<div class="grid-in">
				  <c:forEach items="${hot}" var="h">
				      
				  
				
				
				<div class="col-md-4 grid-top">
						<a href="book/bookInfo?id=${h.id}" class="b-link-stripe b-animate-go  thickbox">
							<img class="img-responsive" src="/photos/${h.photo}"
							style="height: 356px" alt="">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-left b-delay03 ">
									<span>${h.name}</span>
								</h3>
							</div>
						</a>
						<p>
							<a href="book/bookInfo?id=${h.id}">￥${h.price}</a>
						</p>
					</div> 
					
					  </c:forEach>
<!-- 					<div class="col-md-4 grid-top">
						<a href="single.jsp" class="b-link-stripe b-animate-go  thickbox">
							<img class="img-responsive" src="bookImages/10871139.PNG"
							style="height: 356px" alt="">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-left b-delay03 ">
									<span>冰与火之歌</span>
								</h3>
							</div>
						</a>
						<p>
							<a href="single.html">￥323</a>
						</p>
					</div>
					<div class="col-md-4 grid-top">
						<a href="single.jsp" class="b-link-stripe b-animate-go  thickbox">
							<img class="img-responsive" src="bookImages/11555905.PNG"
							style="height: 356px" alt="">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-left b-delay03 ">
									<span>哈利波特</span>
								</h3>
							</div>
						</a>
						<p>
							<a href="single.jsp">￥45</a>
						</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="grid-in">
					<div class="col-md-4 grid-top">
						<a href="single.jsp" class="b-link-stripe b-animate-go  thickbox">
							<img class="img-responsive" src="bookImages/23784363.PNG"
							style="height: 356px" alt="">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-left b-delay03 ">
									<span>火星救援</span>
								</h3>
							</div>
						</a>
						<p>
							<a href="single.jsp">￥65</a>
						</p>
					</div>
					<div class="col-md-4 grid-top">
						<a href="single.jsp" class="b-link-stripe b-animate-go  thickbox">
							<img class="img-responsive" src="bookImages/11555903.PNG"
							style="height: 356px" alt="">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-left b-delay03 ">
									<span>时间都去哪了</span>
								</h3>
							</div>
						</a>
						<p>
							<a href="single.jsp">￥43</a>
						</p>
					</div>
					<div class="col-md-4 grid-top">
						<a href="single.jsp" class="b-link-stripe b-animate-go  thickbox">
							<img class="img-responsive" src="bookImages/10650506.PNG"
							style="height: 356px" alt="">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-left b-delay03 ">
									<span>穷爸爸与富爸爸</span>
								</h3>
							</div>
						</a>
						<p>
							<a href="single.jsp">￥295.5</a>
						</p>
					</div> -->
					<div class="clearfix"></div>
				</div>
			</div>
			<!----->

			<div class="content-top-bottom">
				<h2>推荐图书</h2>
				<c:forEach items="${recommend }" var="p" varStatus="count">
				
				
				<div class="col-md-6 men"> 
			
					<a href="book/bookInfo?id=${p.id}" class="b-link-stripe b-animate-go  thickbox">
						<img class="img-responsive" src="/photos/${p.photo}"
						style="height: 477px" alt="">
						<div class="b-wrapper">
							<h3 class="b-animate b-from-top top-in   b-delay03 ">
								<span>${p.name}</span>
							</h3>
						</div>
					</a>
					
				</div>
<%-- 				</c:if>


<c:if test="${count==2 }">
			 <div class="col-md-6">
					<div class="col-md1 ">
						<a href="book/bookInfo?id=${p.id}" class="b-link-stripe b-animate-go  thickbox">
							<img class="img-responsive" src="/photos/${p.photo}"
							style="height: 226px" alt="">
							<div class="b-wrapper">
								<h3 class="b-animate b-from-top top-in1   b-delay03 ">
									<span>${p.name}</span>
								</h3>
							</div>
						</a>
					</div>
</c:if>

<c:if test="${count==3 }">
					<div class="col-md2">
						<div class="col-md-6 men1">
							<a href="book/bookInfo?id=${p.id}"
								class="b-link-stripe b-animate-go  thickbox"> <img
								class="img-responsive" src="/photos/${p.photo}"
								style="height: 200px" alt="">
								<div class="b-wrapper">
									<h3 class="b-animate b-from-top top-in2   b-delay03 ">
										<span>${p.name}</span>
									</h3>
								</div>
							</a>
						</div>
</c:if>
<c:if test="${count==4 }">
						<div class="col-md-6 men2">
							<a href="book/bookInfo?id=${p.id}"
								class="b-link-stripe b-animate-go  thickbox"> <img
								class="img-responsive" src="/photos/${p.photo}"
								style="height: 200px" alt="">
								<div class="b-wrapper">
									<h3 class="b-animate b-from-top top-in2   b-delay03 ">
										<span>${p.name}</span>
									</h3>
								</div>
							</a>
						</div> 
</c:if> --%>						
						</c:forEach>

						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		
		<!---->
		<!--<div class="content-bottom">
		<ul>
			<li><a href="#"><img class="img-responsive" src="images/lo.png" alt=""></a></li>
			<li><a href="#"><img class="img-responsive" src="images/lo1.png" alt=""></a></li>
			<li><a href="#"><img class="img-responsive" src="images/lo2.png" alt=""></a></li>
			<li><a href="#"><img class="img-responsive" src="images/lo3.png" alt=""></a></li>
			<li><a href="#"><img class="img-responsive" src="images/lo4.png" alt=""></a></li>
			<li><a href="#"><img class="img-responsive" src="images/lo5.png" alt=""></a></li>
		<div class="clearfix"> </div>
		</ul>
	</div>-->
	</div>


	<!-- //登陆框-->
	<div>
		<div class="modal fade" id="exampleModal" tabindex="-3" role="dialog"
			aria-labelledby="exampleModalLabel">

			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="exampleModalLabel">欢迎登陆</h4>
					</div>
					<div class="modal-body">

						<div class="form-group">
							<!-- <label for="recipient-name" class="control-label"></label>-->
							<strong>账号:</strong> <input type="text" name="username"
								placeholder="请输入用户名" class="form-control" id="username">


						</div>
						<div class="form-group">
							<!-- <label for="message-text" class="control-label">密码:</label>-->
							<strong>密 &nbsp;&nbsp;&nbsp;码:</strong> <input
								class="form-control" type="password" placeholder="请输入密码"
								name="password" id="password">

						</div>

					</div>
					<div class="modal-footer">
						<span id="err_msg" style="color: red"></span>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button id="loginSubmit" type="submit" class="btn btn-primary">Login</button>
					</div>
				</div>
			</div>

		</div>
	</div>



	<!-- //注册框-->
	<div>
		<div class="modal fade" id="exampleModal2" tabindex="-3" role="dialog"
			aria-labelledby="exampleModalLabel">

			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="exampleModalLabel">欢迎注册</h4>
					</div>
					<div class="modal-body">

						<div class="form-group">
							<!-- <label for="recipient-name" class="control-label"></label>-->
							<strong>账号:</strong><span id="checkUse"></span> <input
								type="text" name="username" placeholder="请输入用户名"
								class="form-control" id="rgs_username">

						</div>
						<div class="form-group">
							<!-- <label for="message-text" class="control-label">密码:</label>-->
							<strong>密 &nbsp;&nbsp;&nbsp;码:</strong> <input
								class="form-control" type="password" placeholder="请输入密码"
								name="password" id="rgs_password">
						</div>

						<div class="form-group">
							<!-- <label for="recipient-name" class="control-label"></label>-->
							<strong>手机号码:</strong> <span class="hint_str"></span> <input
								type="text" name="phone"  maxlength="11" oninput="test()" placeholder="请输入手机号码"
								class="form-control" id="rgs_phone">

						</div>

						<div class="form-group">
							<!-- <label for="recipient-name" class="control-label"></label>-->
							<strong>地址:</strong> <input type="text" name="address"
								placeholder="请输入地址" class="form-control" id="rgs_address">
								
								<input type="hidden" name="addData"  id="rgs_addData" >
						</div>




					</div>
					<div class="modal-footer">
						<span id="err_msg" style="color: red"></span>
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button id="RegisterSubmit" type="submit" class="btn btn-primary">注册</button>
					</div>
				</div>
			</div>

		</div>
	</div>




	<!-- 管理员陆框-->
	<div>
		<div class="modal fade" id="exampleModal3" tabindex="-3" role="dialog"
			aria-labelledby="exampleModalLabel">

			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="exampleModalLabel">管理员登陆</h4>
					</div>
					<div class="modal-body">

						<div class="form-group">
							<!-- <label for="recipient-name" class="control-label"></label>-->
							<strong>账号:</strong> <input type="text" name="username"
								placeholder="请输入用户名" class="form-control" id="ad_username">


						</div>
						<div class="form-group">
							<!-- <label for="message-text" class="control-label">密码:</label>-->
							<strong>密 &nbsp;&nbsp;&nbsp;码:</strong> <input
								class="form-control" type="password" placeholder="请输入密码"
								name="password" id="ad_password">

						</div>

					</div>
					<div class="modal-footer">
						<span id="admin_err" style="color: red"></span>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button id="Adminlogin" type="submit" class="btn btn-primary">Login</button>
					</div>
				</div>
			</div>

		</div>
	</div>




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
					<p>办公电话: +025 995 0792</p>
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
						<input type="text" value="" onfocus="this.value='';"
							onblur="if (this.value == '') {this.value ='';}"> <input
							type="submit" value="订阅">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="footer-class">
			<p>Copyright &copy; 2017.天天商城 All rights reserved.</p>
		</div>
	</div>



</body>

<script src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.js"></script>
<script src="js/Login.js"></script>
<script src="js/Register.js"></script>

<!-- //未登录不准查看购物车 -->
<script>
$('#gotoCart').click(function(){
	
	var isLogin=${sessionScope.userinfo.id}
	/*  alert(isLogin) */
	console.log(isLogin)
	 if(isLogin==null || isLogin==''){
		alert("请先登陆再查看购物车!")
		window.location.href="index"
	} else{
		window.location.href="cart/showCart"
	}
	
})
</script>

<!-- 查看购物车 -->
<script >
$('#showCartInfo').click(function(){
	var isLogin=${sessionScope.userinfo.id};
	/* alert(isLogin) */
	console.log(isLogin)
	if(isLogin==null){
		alert("请先登陆");
	}else{
		window.location.href="orders/showOrders?id=${sessionScope.userinfo.id}"
	}
	
})
</script>

</html>
