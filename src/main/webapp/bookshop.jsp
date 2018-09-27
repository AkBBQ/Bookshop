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
<title>Products</title>
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
<script src="../js/simpleCart.min.js"> </script>
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
					<!-- 	<p>
							<a href="#" class="simpleCart_empty">清空购物车</a>
						</p> -->

					</div>
					<div class="clearfix">
		<!-- 隐藏表单	 -->		        <form  class="navbar-form navbar-left" action="../book/showList" name="frm" method="post">
                  <input type="hidden" id="currPage" name="currPage" /> 
            </div>
        </form></div>
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
					
					       <!--<legend>旅游资讯</legend>-->
            <div style="float:left">
                <label >所属大类</label>
                <div >
                <select style="margin-top:8px;width:70px;height:30px" name="superType" id="largeClass" onChange="findSmallClass()">
                   <option value="0">请选择</option>
                   <c:forEach items="${large}" var="s">
                      <option value="${s.name}">${s.name}</option>
                   </c:forEach>
                
                </select>
                
                  
                </div>
       </div>
       
        <div style="float:left">
                <label >所属小类</label>
                <div >
                   <select style="margin-top:8px;width:70px;height:30px" name="subType" id="smallclass" >
                    <option value="未选择">请选择</option>
                   </select>
                </div>

       </div>
       <div style="padding-top:27px;padding-left:50px">
                <button type="button" style="height:30px" class="btn btn-primary login">查询</button>
			    </div>		
       <div class="clearfix"> </div>
<%-- 					
		 <ul class="menu">
		 <c:forEach items="${large}" var="L">
		<li class="item1" ><a href="#" id="LargeName">${L.name } </a>
			<ul class="cute" id="Small">
				<li class="subitem" id="SmallName1"><a href="single.html" id="SmallName">文学 </a></li>
				
			</ul>
		</li>
		</c:forEach>
	</ul> --%>
	
	
	
	
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
				<div class="product-bottom" style="margin-top:30px">
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
				<!--商品列表区-->
				<div class="col-md-9 product1">
				<!--第一行-->
				<div class=" bottom-product">
				<c:forEach items="${page.list}" var="t">
					<!--第一个商品-->
					<div class="col-md-4 bottom-cd simpleCart_shelfItem">
						<div class="product-at ">
							<a href="../book/bookInfo?id=${t.id}"><img class="img-responsive"  style="height:250px" src="/photos/${t.photo}" alt="">
							<div class="pro-grid">
										<span class="buy-in">购买</span>
							</div>
						</a>	
						</div>
						<p class="tun"  style="height:64px;">${t.introduce}</p>
						<a href="#" class="item_add"><p class="number item_price"><i> </i>¥${t.price}</p></a>
					</div>
					</c:forEach>

					<div class="clearfix"> </div>
				</div>
		<nav class="in">
		
				  <ul class="pagination">
					<li ><a href="javascript:go(1)">首页 <span class="sr-only">(current)</span></a></li>
					<li><a href="javascript:go(${page.prePage})">上一页<span class="sr-only"></span> </a></li>
					<li><a href="javascript:go(${page.nextPage})">下一页 <span class="sr-only"></span> </a></li>
					<li><a href="javascript:go(${page.pages})">末页 <span class="sr-only"></span></a></li>
					
				  </ul>
				  <div style="margin-top:-10px">共${page.pages}页 共${page.total}条记录 第${page.pageNum}页  </div>
				</nav>
				
<script>
function go(currPage){
	$('#currPage').val(currPage)
	document.frm.submit();
}

</script>

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
			</div>


<!-- 动态拼接大类下的小类名称	 -->		
<script>
$('#LargeName').click(function(){
	var LargeName=$('#LargeName').text();
	alert(LargeName)
		$.ajax({
		method:'post',
		url:'../book/showSmall',
		data:{name:LargeName},
		success:function(result){
			  $('#Small SmallName1 SmallName').remove(); //先清除掉二级框的option中的值 防止追加结果
			  $.each(result,function (index,items) {
                  smallname =items.name
                  $('#smallclass').append("<option value="+smallname+">"+smallname+"</option>");
                /* alert(smallname) */
              })
			 alert(smallname) 
			
		},
		error:function(){
			alert("请求失败")
		}
	})
})
</script>		

<script src="../bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script src="../bootstrap-3.3.7/js/bootstrap.js"></script>

<!-- 登陆 -->
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
		window.location.href="../book/showList"
	} else{
		window.location.href="../cart/showCart"
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

<!-- 二级联动 -->
<script>
function findSmallClass(){
	var largeClass = $("#largeClass").val();
	/* alert(largeClass); */
	$.ajax({
		method:'post',
		url:'../book/showSmall',
		data:{name:largeClass},
		success:function(result){
			  $('#smallclass option').remove(); //先清除掉二级框的option中的值 防止追加结果
			  $.each(result,function (index,items) {
                  smallname =items.name
                  $('#smallclass').append("<option value="+smallname+">"+smallname+"</option>");
                /* alert(smallname) */
              })
			/* alert("success") */
			
		},
		error:function(){
			alert("请求失败")
		}
	})
	
}
</script>
</body>
</html>
			