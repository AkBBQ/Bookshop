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
    <div class="panel-heading">图书列表</div>
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
            <th style="width:5%">序号</th>
             <th style="width:8%">大类</th>
            <th style="width:8%">小类</th>
            <th style="width:15%">书名</th>
            <th style="width:5%">书号</th>
            <th style="width:8%">简介</th>
            <th style="width:5%">原价</th>
            <th style="width:5%">现价</th>
            <th style="width:10%">缩略图</th>
           <!--  <th style="width:8%">页数</th>
            <th style="width:10%">出版社</th> -->
            <th style="width:5%">作者</th>
            <!-- <th style="width:5%">是否新书</th> -->
             <th style="width:5%">是否热卖</th>
              <th style="width:5%">是否特别推荐</th>
               <th style="width:10%">上架日期</th>
            <th style="width:15%">操作</th>
        </tr>
    	<c:forEach items="${page.list}" var="t" varStatus = "status">
    		<tr>
    			<td>${status.count}</td>
    			<td>${t.superType }</td>
    			<td>${t.subType }</td>
    			<td>${t.name }</td>
    			<td>${t.isbn }</td>
    			<td>${t.introduce }</td>
    			<td>${t.price}</td>
    			<td>${t.nowPrice }</td>
    			<td>
    				<c:if test="${t.photo!=null}">
    					<img src="/photos/${t.photo}" class="photo_img" width="50" height="50"/>
    				</c:if>
    				</td>
    			<%-- <td>${t.pages }</td>
    			<td>${t.publisher }</td> --%>
    			<td>${t.author }</td>
    			<%-- <td>${t.newBook}</td> --%>
    			 <td>${t.saleBook }</td>
    			<%-- <td>${t.specialBook }</td> --%>
    			<td>${t.recommendBook }</td>
    			<td><fmt:formatDate value="${t.addDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
    			<%-- <td><fmt:formatDate value="${t.addDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td> --%>
    			<td><a href="book/BreUpdate?id=${t.id}" class="btn btn-success btn-sm">修改</a> 
		        <a href="book/Bdel?id=${t.id}" class="btn btn-danger btn-sm">删除</a></td>
    		</tr>
    	</c:forEach>
    
</table>

<div>
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
</div>
</body>

<script>
function go(currPage){
	$('#currPage').val(currPage)
	document.frm.submit();
}

</script>

</html>
