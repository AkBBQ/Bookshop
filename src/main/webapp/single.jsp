﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>图书详情</title>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://apps.bdimg.com/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<!-- start menu -->
<link href="../css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="../js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
 

<script src="../js/main.js"></script>
<script src="../js/simpleCart.min.js"> </script>
</head>
<body>
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
						<li><a class="lock" style="padding-left:15px" href="../Login/quitLogin">注销</a></li>
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
						<a href="javascript:void(0)" id="gotoCart"><img src="../images/cart.png" alt="" /></a>
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
						<li class="active grid"><a class="color8" href="../index">首页</a></li>
						<li><a class="color1" href="../book/showList">书城</a></li>
						<li><a class="color6" href="contact.jsp">联系我们</a></li>
					</ul>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>

	</div>


<!--content-->
<!---->
<div class="product">
	<div class="container">
		<div class="col-md-3 product-price">

			<div class=" rsidebar span_1_of_left">
				<div class="of-left">
					<h3 class="cate">分类</h3>
				</div>
				<ul class="menu">
					<li class="item1"><a href="#">文艺 </a>
						<ul class="cute">
							<li class="subitem1"><a href="single.html">文学 </a></li>
							<li class="subitem2"><a href="single.html">传记 </a></li>
							<li class="subitem3"><a href="single.html">艺术 </a></li>
						</ul>
					</li>
					<li class="item2"><a href="#">生活</a>
						<ul class="cute">
							<li class="subitem1"><a href="single.html">亲子</a></li>
							<li class="subitem2"><a href="single.html">家教保健</a></li>
							<li class="subitem3"><a href="single.html">家居家庭</a></li>
						</ul>
					</li>
					<li class="item4"><a href="#">人文社科</a>
						<ul class="cute">
							<li class="subitem1"><a href="single.html">历史</a></li>
							<li class="subitem2"><a href="single.html">古籍</a></li>
							<li class="subitem3"><a href="single.html">文化</a></li>
						</ul>
					</li>


				</ul>
			</div>
			<!--initiate accordion-->
			<script type="text/javascript">
				$(function() {
					var menu_ul = $('.menu > li > ul'),
							menu_a  = $('.menu > li > a');
					menu_ul.hide();
					menu_a.click(function(e) {
						e.preventDefault();
						if(!$(this).hasClass('active')) {
							menu_a.removeClass('active');
							menu_ul.filter(':visible').slideUp('normal');
							$(this).addClass('active').next().stop(true,true).slideDown('normal');
						} else {
							$(this).removeClass('active');
							$(this).next().stop(true,true).slideUp('normal');
						}
					});

				});
			</script>
			<!---->


			<!---->
			<div class="product-bottom">
				<div class="of-left-in">
					<h3 class="best">热销品种</h3>
				</div>
				<div class="product-go">
					<div class=" fashion-grid">
						<a href="single.html">
							<img class="img-responsive " style="height:87px;" src="bookImages/11090598.PNG" alt=""></a>
					</div>
					<div class=" fashion-grid1">
						<h6 class="best2"><a href="single.html" >200万粉丝大号“混子曰”创始人二混子的革命性历史作品。
						</a></h6>
						<span class=" price-in1">￥40.00</span>
					</div>

					<div class="clearfix"> </div>
				</div>
				<div class="product-go">
					<div class=" fashion-grid">
						<a href="single.html"><img class="img-responsive " src="bookImages/23248697-1_w_17.jpg" alt=""></a>

					</div>
					<div class="fashion-grid1">
						<h6 class="best2"><a href="single.html" >斩获十二项国际大奖的畅销巨作！卫报年度Zui佳作品。我们身处不同世界，但成长、亲情与人性，却从来没有什么不同。 </a></h6>

						<span class=" price-in1"> ￥20.00</span>
					</div>

					<div class="clearfix"> </div>
				</div>

			</div>
			<div class=" per1">
				<a href="single.html" ><img class="img-responsive" style="height:278px;" src="bookImages/23822200-1_l.jpg" alt="">
					<div class="six1">
						<h4>折扣</h4>
						<p>高达</p>
						<span>30%</span>
					</div></a>
			</div>
		</div>

		<div class="col-md-9 product-price1">
				<div class="col-md-5 single-top">
			<div class="flexslider">
  <ul class="slides">
    <li >
      <img src="/photos/${list.photo}" />
    </li>

  </ul>
</div>
<!-- FlexSlider -->
  <script defer src="../js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="../css/flexslider.css" type="text/css" media="screen" />

<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>
					</div>
					<div class="col-md-7 single-top-in simpleCart_shelfItem">
						<div class="single-para ">
							<h4 style="font-size: 2em; font-weight: bold;">${list.name}</h4>

							<h5  id="TotalPrice" class="item_price">￥${list.price}</h5>
							<p>${list.introduce}</p>
							<div class="available">
								<div class="input-group" style="width: 125px;">
								<span class="input-group-btn">
									<button type="button" class="btn btn-default" onclick="numChange(false)">-</button>
								</span>
									<input type="text" class="form-control" value="1" id="numInput" style="text-align:center;" onchange="onlyNum(this)"/>
								<span class="input-group-btn">
									<button type="button" class="btn btn-default" onclick="numChange(true)">+</button>
								</span>
								</div>
								<%-- <a href="javascript:addCart('${book.id}', $('#numInput').val());" class="add-cart item_add" >添加到购物车</a> --%>
								<a href="javascript:void(0)" id="addIntoCart" class="add-cart item_add" >添加到购物车</a>
							</div>
							<script>
								function onlyNum(input) {
									if (/\D/.test(input.value)) {
										input.value="1";
									}
								}

								function numChange(b) {
									var num = parseInt($("#numInput").val());
									if (b) {
										$("#numInput").val(num+1);
									}
									else if (num > 1) {
										$("#numInput").val(num - 1);
									}
								}
							</script>
							<style>
								ul.tag-men li span.women1 {
									margin-left:0px;
								}
							</style>
							<ul class="tag-men">
								<li><span>大类 : </span><span class="women1">${list.superType }</span></li>
								<li><span>小类 : </span><span class="women1">${list.subType }</span></li>
							</ul>

						</div>
					</div>
					<div class="clearfix"></div>
			<!---->
			<div class="cd-tabs">
				<nav>
					<ul class="cd-tabs-navigation">
						<li><a data-content="fashion" href="#0">图书介绍 </a></li>
						<li><a data-content="cinema" href="#0" class="selected ">详细信息</a></li>

					</ul>
				</nav>
				<ul class="cd-tabs-content">
					<li data-content="fashion">
						<div class="facts">
							<p>${list.introduce}</p>

						</div>

					</li>
					<li data-content="cinema" class="selected">
						<div class="facts1">

							<div class="color">
								<p>书名</p>
								<span>${list.name}</span>
								<div class="clearfix"></div>
							</div>
							<div class="color">
								<p>ISBN</p>
								<span>${list.isbn}</span>
								<div class="clearfix"></div>
							</div>
							<div class="color">
								<p>页数</p>
								<span>${list.pages}</span>
								<div class="clearfix"></div>
							</div>
							<div class="color">
								<p>出版商</p>
								<span>${list.publisher}</span>
								<div class="clearfix"></div>
							</div>
							<div class="color">
								<p>作者</p>
								<span>${list.author}</span>
								<div class="clearfix"></div>
							</div>
							<div class="color">
								<p>出版日期</p>
								
									<input type="text" readonly="readonly" style="border:0"
	            	 value='<fmt:formatDate value="${list.addDate}" pattern="yyyy-MM-dd"/>'>
										
									</span>
								<div class="clearfix"></div>
							</div>

						</div>

					</li>

					<div class="clearfix"></div>
				</ul>
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
						<button id="loginSubmit1" type="submit" class="btn btn-primary">Login</button>
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
						<button id="Adminlogin1" type="submit" class="btn btn-primary">Login</button>
					</div>
				</div>
			</div>

		</div>
	</div>
	
	
	
	<div class="footer-class">
		<p >Copyright &copy; 2017.天天商城 All rights reserved.</p>
	</div>
</div>

<script src="../bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script src="../bootstrap-3.3.7/js/bootstrap.js"></script>
<!-- <script src="../js/Login.js"></script>
<script src="../js/Register.js"></script> -->
<script>

$('#loginSubmit1').click(function () {
    
    var isLogin=$('#LoginUserName').text();
      /*alert(isLogin);*/
          if(isLogin==null || isLogin==""){
         $.ajax({
             method: 'post',
             url: '../Login/login',
             data: {username: $('#username').val(), password: $('#password').val()},
             success: function (result) {
             	/*alert(result)*/
                 if (result === 1 || result === 2) {
                     $('#err_msg').html("用户名或密码错误")
                 } else if (result === 0) {
                     /*alert("登陆成功");*/
                  /*   $('#').html().innerHTML="${session.userinfo.getUsername()}";*/

                     window.location.href = "../index"; //经测试这里的url是要写上项目名的
                }
             },
             error: function () {
                 alert("失败")
             }

         })
         
          }else{
         	 $('#err_msg').html("请先注销当前已登陆账号!")
          }


 })
 
 
/*管理员登陆 */   
 $('#Adminlogin1').click(function(){
 	var ad_username=$('#ad_username').val();
 	var ad_password=$('#ad_password').val();
 	$.ajax({
 		method:'post',
 		url:'../Admin/login',
 		data:{username:ad_username,password:ad_password},
 		success:function(result){
 			if(result==1 || result==2){
 				/*alert("error")*/
 				$('#admin_err').html("用户名或者密码错误");
 			}else if(result==0){
 				/*alert("success")*/
 				window.location.href="../admin/main.jsp";
 			}
 		},
 		error:function(){
 			alert("ERROR!");
 		},
 	})
 	
 	
 	
 })
</script>


<!-- //未登录不准查看购物车 -->
<script>
$('#gotoCart').click(function(){
	
	var isLogin=${sessionScope.userinfo.id}
	/*  alert(isLogin) */
	console.log(isLogin)
	 if(isLogin==null || isLogin==''){
		alert("请先登陆再查看购物车!")
		window.location.href="../index"
	} else{
		window.location.href="../cart/showCart"
	}
	
})
</script>

<!-- //添加购物车 -->
<script>
$('#addIntoCart').click(function(){
	/*  alert("点击了")  */
	 var isLogin=${sessionScope.userinfo.id}
	if(isLogin==null || isLogin==''){
		alert("对不起,请先登陆再操作!")
	}else{
		
		/* var monery=${list.price} //获得添加到购物车的总价格 */
		var userid=${sessionScope.userinfo.id} //获取登陆用户id
		var bookid=${list.id}//获取书籍id
		var nums=$('#numInput').val();//获取购买数量
		/*  alert(monery); */
		/*  alert(isLogin); */
		/*  alert("当前登陆用户id为:"+userid);
		 alert("你买的这本书id为"+bookid);
		 alert("购买的数量是"+nums); */
		$.ajax({
			method:'post',
			url:'../cart/add',
			data:{userId:userid,bookId:bookid,num:nums},
			success:function(result){
				 alert("添加成功") 
				 window.location.href="../cart/showCart"; 
			},
			error:function(){
				alert("请求添加到购物车失败")
			}
		})
		
	}
	
}) 
</script>

<!-- 查看购物车 -->
<script >
$('#showCartInfo').click(function(){
	var isLogin=${sessionScope.userinfo.id};
	/* alert(isLogin) */
	if(isLogin==null){
		alert("请先登陆");
	}else{
		window.location.href="../orders/showOrders?id=${sessionScope.userinfo.id}"
	}
	
})
</script>
</body>
</html>
			