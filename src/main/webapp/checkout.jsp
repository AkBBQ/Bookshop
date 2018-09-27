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
<title>Checkout</title>
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

<!--fonts-->
<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'><!--//fonts-->
<!-- start menu -->
<link href="../css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="../js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="../js/simpleCart.min.js"> </script>
<script src="../js/cart.js"></script>
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

					</ul>
					<div class="cart box_1">
						<h3>
							<div class="total">

								<span id="simpleCart_total">￥<span>${cartInfo.get(0)}</span></span> (<span
									id="simpleCart_quantity">${cartInfo.get(1)}</span> 件商品)
							</div>
						<a href="javascript:void(0)" id="gotoCart"><img src="../images/cart.png" alt="" /></a>
						</h3>
						<p>
							<a href="../cart/delAll" class="simpleCart_empty">清空购物车</a>
						</p>

					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	<div class="container">
		<div class="head-top">
			<div class="logo">
				<a href="../index"><img src="../images/logo1.png" alt=""></a>
			</div>
			<div class=" h_menu4">
				<ul class="memenu skyblue">
					<li class="active grid"><a class="color8" href="../index">首页</a></li>
					<li><a class="color1" href="../book/showList">书城</a></li>
					<li><a class="color6" href="contact.html">联系我们</a></li>
				</ul>
			</div>

			<div class="clearfix"> </div>
		</div>
	</div>

</div>


<div class="container">
	<div class="check">
		<h1>我的商品 (<span id="shoppingBag">${info.get(1)}</span>)</h1>
		
		<div class="col-md-9 cart-items">

					<div class="cart-header">
					<c:forEach items="${list}" var="p" varStatus="t">
					
						<%-- <div class="close1" onclick="removeCart($(this).parent(), '${item.book.id}')"></div> --%>
						<div>
						
						<a href="../cart/del?id=${p.id}"><button type="button"   class="btn btn-danger"  style="margin-left:700px">删除</button></a></div>
						<div class="cart-sec simpleCart_shelfItem">
							<div class="cart-item cyc">
									<img src="/photos/${p.book.photo}" class="img-responsive" alt=""   style="height:180px!important;width:auto!important;" />
							</div>
							<div class="cart-item-info">
								<h3>
									<a href="#">${p.book.name}</a>
									<span>ISBN: ${p.book.isbn}</span>
								</h3>
								<ul class="qty">
									<li><p>价格 :￥${p.book.price}</p></li>
									<li><p>数量 : ${p.num }</p></li>
								</ul>

								<div class="delivery">
									<p>运费 : ￥00.00</p>
									<span>大约 1-2 天送达</span>
									<div class="clearfix"></div>
								</div> 
							</div>
							<div class="clearfix"></div>

						</div>
						</c:forEach>
					</div>

<%-- 			<div class="cart-header">
				<div class="close1" onclick="removeCart($(this).parent(), '${item.book.id}')"></div>
				<div class="cart-sec simpleCart_shelfItem">
					<div class="cart-item cyc">
						<img src="bookImages/23784363.PNG" class="img-responsive" alt=""   style="height:180px!important;width:auto!important;" />
					</div>
					<div class="cart-item-info">
						<h3>
							<a href="#">火星救援</a>
							<span>ISBN: 1002000</span>
						</h3>
						<ul class="qty">
							<li><p>价格 :￥56</p></li>
							<li><p>数量 : 1</p></li>
						</ul>

						<div class="delivery">
							<p>运费 : ￥00.00</p>
							<span>大约 1-2 天送达</span>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>

				</div>
			</div> --%>

		</div>
		<div class="col-md-3 cart-total">
			<a class="continue" href="../book/showList">继续购物</a>
			<div class="price-details">
				<h3>价格明细</h3>
				<span>商品总价</span> <span class="total1" id="totalPrice">
						 ￥156.10
						</span> <span>折扣</span>
				<span class="total1">---</span> <span>运费</span> <span
					class="total1">---</span>
				<div class="clearfix"></div>
			</div>
			<ul class="total_price">
				<li class="last_price">
					<h4>总价格</h4>
				</li>
				<li class="last_price"><span id="lastPrice">
						￥${info.get(0) }
					</span></li>
				<div class="clearfix"></div>
			</ul>


			<div class="clearfix"></div>
			<a class="order" href="javascript:void(0)" id="doOrders">下单购买</a>

		</div>

		<div class="clearfix"></div>
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
		<p >Copyright &copy; 2017.天天商城 All rights reserved.
		<input type="hidden" id="userid" value="${sessionScope.userinfo.id }"></input>
		<input type="hidden" id="address" value="${sessionScope.userinfo.address }"></input>
		<input type="hidden" id="phone" value="${sessionScope.userinfo.phone }"></input>
		</p>
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

<script>
$('#doOrders').click(function(){
	/* alert("准备下单咯!"); */

	 var userid=$('#userid').val(); //用户id
    var username1=$('#LoginUserName').text(); //用户名
    var phone1=$('#phone').val(); //用户手机
    var address1=$('#address').val(); //用户地址
    var OrderDate='';
	
   /*  alert(username+userid+phone+address) */

	 $.ajax({
		method:'post',
		url:'../orders/add',
		data:{userId:userid,username:username1,phone:phone1,address:address1,orderDate:OrderDate},
		success:function(result){
			alert("下单成功")
			window.location.href="../orders/showOrders?id=${sessionScope.userinfo.id}"
		},
		error:function(){
			alert("error")
		}
	}) 
})

</script>
</body>
</html>
			