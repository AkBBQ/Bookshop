<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'demo_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="admin/bootstrap-3.3.7/css/bootstrap.min.css">
	<script type="text/javascript" src="admin/bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="admin/bootstrap-3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="admin/bootstrap-3.3.7/js/bootstrap-paginator.js"></script>
	<style type="text/css">        

        /** 图片动画显示和悬停放大**/
        .photo_img{
            cursor: pointer;
            transition: all 1.0s;
        }
        .photo_img:hover{
            transform: scale(2.6);
        }
    </style>
  </head>
  
<body>
<div class="panel panel-info">
    <div class="panel-heading">用户列表</div>
    <div class="panel-body">
        <form  class="navbar-form navbar-left" action="tour/list" name="frm" method="post">
            <div class="form-group">
                <input type="text" name="title" id="title" class="form-control" placeholder="请输入名称"  value="${tour.title }"/>&nbsp;
             	 从&nbsp;<input type="date" name="startDate" id="startDate" class="form-control"
             	 value='<fmt:formatDate value="${tour.startDate}" pattern="yyyy-MM-dd"/>'>&nbsp;到&nbsp;
                <input type="date" name="endDate" id="endDate" class="form-control"
                value='<fmt:formatDate value="${tour.endDate}" pattern="yyyy-MM-dd"/>'>
                
             	
             	  <select name="agency" id = "agencyvalue" class = "form-control">
             	   <option value="0" select="selected">请选择</option>
                        <c:forEach items="${agency}"  var="t"> 
                       
                        <option value="${t.id}">${t.name}</option>
                        </c:forEach> 
                    </select>
                   <input type="hidden" name="agency.id" id="agency.id"> 
                    
                <button class="btn btn-success">查询</button>
                <button type="button" class="btn btn-success" onclick="location.href='tour/preAdd'">新增</button>
                  <input type="hidden" id="currPage" name="currPage" /> 
            </div>
        </form>
    </div>
</div>

<table class="table table-bordered table-striped table-hover">
		<tr class="label-success" >
            <th style="width:5%">序号</th>
             <th style="width:20%">用户名</th>
            <th style="width:8%">密码</th>
            <th style="width:8%">地址</th>
            <th style="width:8%">手机号</th>
            <th style="width:8%">注册日期</th>
            
            <th style="width:15%">操作</th>
        </tr>
    	<c:forEach items="${list}" var="t" varStatus = "status">
    		<tr>
    			<td>${status.count}</td>
    			
    			<td>${t.username }</td>
    			<td>${t.password }</td>
    			<td>${t.address }</td>
    			<td>${t.phone }</td>
    			<td><fmt:formatDate value="${t.addDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
    			<td><a href="tour/preUpdate?id=${t.id}" class="btn btn-success btn-sm">修改</a> 
		        <a href="tour/del?id=${t.id}" class="btn btn-success btn-sm">删除</a></td>
    		</tr>
    	</c:forEach>
    
</table>

<%-- <!-- 分页部分 -->
<div>
共${list.totalPage}页 第${list.currPage}页  
<a href="javascript:go(1)">首页</a>

<c:if test="${list.currPage>1}"><a href="javascript:go(${list.currPage-1})"></c:if> 上一页</a>
<c:if test="${list.currPage<list.totalPage}"><a href="javascript:go(${list.currPage+1})"></c:if> 下一页</a>
<a href="javascript:go(${list.totalPage})">末页</a>
</div>
</body>

<script>
function go(currPage){
	$('#currPage').val(currPage)
	document.frm.submit();
}

</script> --%>

</html>
