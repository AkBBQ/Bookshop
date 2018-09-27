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
        <h3 class="panel-title">新增图书信息</h3>
    </div>
    <div class="panel-body">
        <form class="form-horizontal" action="book/Badd" method="post" enctype="multipart/form-data">

            <!--<legend>旅游资讯</legend>-->
            <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">所属大类</label>
                <div class="col-sm-4">
                <select style="margin-top:8px;width:150px" name="superType" id="largeClass" onChange="findSmallClass()">
                   <option value="0">请选择</option>
                   <c:forEach items="${Large}" var="s">
                      <option value="${s.name}">${s.name}</option>
                   </c:forEach>
                
                </select>
                
                  
                </div>
       </div>
       
        <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">所属小类</label>
                <div class="col-sm-4">
                   <select style="margin-top:8px;width:150px" name="subType" id="smallclass" >
                    <option value="未选择">请选择</option>
                   </select>
                </div>
       </div>
       <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">添加书名</label>
                <div class="col-sm-4">
                    <input class="form-control" name="name" id="name" type="text" placeholder="请输入书名"/>
                </div>
       </div>
         <div class="form-group">
                <label class="col-sm-2 control-label" for="description">照片</label>
               <div class="col-sm-10">
                   <input type="file" name="myFile">
                </div>
       </div>
       <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">添加编号</label>
                <div class="col-sm-4">
                    <input class="form-control" name="isbn" id="isbn" type="text" placeholder="请输入书籍编号"/>
                </div>
       </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">原价</label>
                <div class="col-sm-4">
                    <input class="form-control" name="price" id="price" type="text" placeholder="请输入原价"/>
                </div>
       </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">现价</label>
                <div class="col-sm-4">
                    <input class="form-control" name="nowPrice" id="nowPrice" type="text" placeholder="请输入现价"/>
                </div>
       </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">页数</label>
                <div class="col-sm-4">
                    <input class="form-control" name="pages" id="pages" type="text" placeholder="请输入书籍页数"/>
                </div>
       </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">出版社</label>
                <div class="col-sm-4">
                    <input class="form-control" name="publisher" id="publisher" type="text" placeholder="请输入出版社"/>
                </div>
       </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">作者</label>
                <div class="col-sm-4">
                    <input class="form-control" name="author" id="author" type="text" placeholder="请输入作者"/>
                </div>
       </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">是否新书</label>
                <div class="col-sm-4">
                <select name="newBook">
                  <option value="是">是</option>
                   <option value="否">否</option>
                </select>
                </div>
       </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">是否热卖</label>
                <div class="col-sm-4">
                   <select name="saleBook">
                   <option value="是">是</option>
                   <option value="否">否</option>
                </select>
                    
                </div>
       </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">是否特价</label>
                <div class="col-sm-4">
                <select name="specialBook">
                   <option value="是">是</option>
                   <option value="否">否</option>
                </select>
                   
                </div>
       </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">是否特别推荐</label>
                <div class="col-sm-4">
                  <select name="recommendBook">
                   <option value="是">是</option>
                   <option value="否">否</option>
                </select>
                  
                </div>
       </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">简介</label>
                <div class="col-sm-4">
                 <textarea name="introduce" id="introduce" rows="3" cols="120"></textarea>
                    
                </div>
       </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">上架日期</label>
                <div class="col-sm-4">
                <input type="date" name="addDate" id="addDate" class="form-control"
             	>
    
                </div>
       </div> 
      
         
 			<div class="form-group" style="text-align: center">
            	<button  class="btn-info btn-lg">提交</button>        	
        	</div>
    </form>
    </div>
</div>

<!-- 二级联动 -->
<script>
function findSmallClass(){
	var largeClass = $("#largeClass").val();
	/* alert(largeClass); */
	$.ajax({
		method:'post',
		url:'book/showSmall',
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
<script src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.js"></script>
</html>