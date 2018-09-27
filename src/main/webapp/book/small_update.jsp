<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.css">
    <link rel="stylesheet" href="css/about.css">
</head>
<body>
<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">修改</h3>
    </div>
    <div class="panel-body">
        <form class="form-horizontal" action="class/Supdata" method="post">

            <!--<legend>旅游资讯</legend>-->
            
                                    <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">所属大类</label>
                <div class="col-sm-4">
                 <select name="lid">
                    <c:forEach items="${large}" var="s">
                      <option value="${s.id}" <c:if test="${list.id==s.id}">selected</c:if>>${s.name}</option>
                    </c:forEach>
                 </select>
                  
                </div>
       </div>
            
            <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">小类名称</label>
                <div class="col-sm-4">
                 <input class="form-control" value="${list.id}" name="id"  type="hidden" placeholder="id"/>
                    <input class="form-control" name="name" id="name" type="text" value="${list.name}" placeholder="请输入小类标题"/>
                </div>
       </div>
            
            
            
            
            
            
            
            
            
        
         
 			<div class="form-group" style="text-align: center">
            	<button  class="btn-info btn-lg">提交</button>        	
        	</div>
    </form>
    </div>
</div>
</body>
<script src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.js"></script>
</html>