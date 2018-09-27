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
    
    <title>订单详情</title>
    
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
<div><a href="index"><button type="button" class="btn btn-primary login">首页</button></a></div>
<div class="panel panel-info">
    <div class="panel-heading">我的全部订单</div>
    <div class="panel-body">
        <form  class="navbar-form navbar-left" action="book/list" name="frm" method="post">
            <div class="form-group">
                <input type="text" name="name" id="name" class="form-control" placeholder="请输入书名"  value="${book.name}"/>&nbsp;
             	
                   <input type="hidden" name="agency.id" id="agency.id"> 
                    
                <button class="btn btn-success">查询</button>
                <button type="button" class="btn btn-success" onclick="location.href='book/BperAdd'">新增</button>
                  <input type="hidden" id="currPage" name="currPage" /> 
            </div>
        </form>
    </div>
</div>

<table class="table table-bordered table-striped table-hover">
		<tr class="label-success" >
		<th style="width:8%">序号</th>
            <th style="width:8%">订单号</th>
             <th style="width:5%">用户名</th>
            <th style="width:10%">手机号</th>
            <th style="width:5%">地址</th>
            <th style="width:5%">状态</th>
             <th style="width:10%">发货日期</th>
             <th style="width:10%">下单日期</th>
             <th style="width:10%">查看详情</th>
        </tr>
    	<c:forEach items="${list}" var="t" varStatus = "status">
    		<tr>
    		<td>${status.count}</td>
    			<td>${t.orderId}</td>
    			<td>${t.username }</td>
    			<td>${t.phone }</td>
    			<td>${t.address }</td>
    			 <td>
    			<c:if test="${t.status=='1' }">发货</c:if>
    			<c:if test="${t.status=='0' }">发货</c:if>
    			  ${t.status}
    			 </td>
    			 <td><c:if test="${t.shipDate==null }">暂未发货</c:if>
    			 
    			 <fmt:formatDate value="${t.shipDate}" pattern="yyyy-MM-dd"/></td>
    			
    			<td><fmt:formatDate value="${t.orderDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
    			<td><a href="orderitems/show?id=${t.orderId}" class="btn btn-success btn-sm">查看</a> 
		      </td> 
    			<%-- <td>${t.pages }</td>
    			<td>${t.publisher }</td> --%>
    		
    			<%-- <td>${t.specialBook }</td> --%>
    			<%-- <td>${t.recommendBook }</td>
    			<td><fmt:formatDate value="${t.addDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
    			
    			<td><a href="book/BreUpdate?id=${t.id}" class="btn btn-success btn-sm">修改</a> 
		        <a href="book/Bdel?id=${t.id}" class="btn btn-danger btn-sm">删除</a></td> --%>
    		</tr>
    	</c:forEach>
    
</table>

<%-- <div>
	共${page.pages}页 共${page.total}条记录 第${page.pageNum}页  
	<a href="javascript:go(1)">首页</a> 
	<c:if test="${page.hasPreviousPage}">
		<a href="javascript:go(${page.prePage})">
	</c:if>
	上一页
	<c:if test="${page.hasPreviousPage}">
		</a>
	</c:if> 
	<c:if test="${page.hasNextPage }">
		<a href="javascript:go(${page.nextPage})">
	</c:if>
	下一页 
	<c:if test="${page.hasNextPage}">
		</a>
	</c:if>	
	<a href="javascript:go(${page.pages})">末页</a>
</div> --%>
</body>

<script>
function go(currPage){
	$('#currPage').val(currPage)
	document.frm.submit();
}

</script>

</html>
