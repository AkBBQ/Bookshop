<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.css">
<style type="text/css">
	#show {
		font-size: 16px;
		font-weight: bold;
		color: red
	}
</style>
</head>
<body>
<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">登录</h3>
    </div>
    <div class="panel-body">
        <form action="login/index" method="post">
            <div class="form-group">
                <label for="exampleInputEmail1">名称</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="用户名">
            </div>           
            <div class="form-group">
                <label for="exampleInputEmail1">密码</label>
                <input type="number" class="form-control" id="password" name="password" placeholder="密码">
            </div>
             
            <button type="button" id="btn" class="btn btn-default">登录</button>
            <span id="show"></span>
        </form>
    </div>
</div>
</body>
<script src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.js"></script>
<script>
	$(function(){
		$('#btn').click(function(){
			var username = $('#username').val()
			var password = $('#password').val()
			$.getJSON('login/index',{'username':username,'password':password},function(data){
				if(data === 0){ //成功
					location.href = 'admin/main.jsp'
				}else{
					var show = '';
					if(data === 1) show = '用户名错误' 
					else show = '密码错误'
					$('#show').html(show)
				}
			})
		})
	})

</script>
</html>