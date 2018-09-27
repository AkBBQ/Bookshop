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
        <h3 class="panel-title">图书信息修改</h3>
    </div>
    <div class="panel-body">
        <form class="form-horizontal" action="book/BUpdate" method="post">

            <!--<legend>旅游资讯</legend>-->
            <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">所属大类</label>
                <div class="col-sm-4">
                     <select style="margin-top:8px;width:150px" name="superType" id="largeClass" onChange="findSmallClass()">
                        <c:forEach items="${Large}" var="L">
                           <option value="${L.name}" <c:if test="${list.superType==L.name}">selected</c:if>>${L.name}</option>
                        </c:forEach>
                     </select>
                </div>
            </div>
                      <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">所属小类</label>
                <div class="col-sm-4">
                   <select style="margin-top:8px;width:150px" name="subType" id="smallclass" >
                    <option value="${list.subType}">${list.subType}</option>
                   </select>
                </div>
       </div>
                   
           
                   <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">修改书名</label>
                <div class="col-sm-4">
                    <input class="form-control" value="${list.name}" name="name"  type="text" /> 
                   <!--    主键隐藏 -->     <input class="form-control" value="${list.id}" name="id"  type="hidden" />
                  
                </div>
           </div>
                   <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">修改编号</label>
                <div class="col-sm-4">
                    <input class="form-control" value="${list.isbn}" name="isbn"  type="text" />   
                </div>
            </div>
                   <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">修改原价</label>
                <div class="col-sm-4">
                    <input class="form-control" value="${list.price}" name="price"  type="text" />   
                </div>
            </div>
                   <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">修改现价</label>
                <div class="col-sm-4">
                    <input class="form-control" value="${list.nowPrice}" name="nowPrice"  type="text" />   
                </div>
            </div>
                  <%--  <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">修改页数</label>
                <div class="col-sm-4">
                    <input class="form-control" value="${list.name}" name="name"  type="text" />   
                </div> --%>
           
                   <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">修改出版社</label>
                <div class="col-sm-4">
                    <input class="form-control" value="${list.publisher}" name="publisher"  type="text" />   
                </div>
            </div>
                   <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">修改作者</label>
                <div class="col-sm-4">
                    <input class="form-control" value="${list.author}" name="author"  type="text" />   
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">是否新书</label>
                <div class="col-sm-4">
                   <select name="newBook">
                   <option value="是" <c:if test="${list.newBook=='是' }">selected</c:if> >是</option>
                   <option value="否" <c:if test="${list.newBook=='否' }">selected</c:if> >否</option>
                </select>
                    
                </div>
       </div>
            
                            <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">是否热卖</label>
                <div class="col-sm-4">
                   <select name="saleBook">
                   <option value="是" <c:if test="${list.saleBook=='是' }">selected</c:if> >是</option>
                   <option value="否" <c:if test="${list.saleBook=='否' }">selected</c:if> >否</option>
                </select>
                    
                </div>
       </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">是否特价</label>
                <div class="col-sm-4">
                <select name="specialBook">
                   <option value="是" <c:if test="${list.specialBook=='是' }">selected</c:if>>是</option>
                   <option value="否" <c:if test="${list.specialBook=='否' }">selected</c:if>>否</option>
                </select>
                   
                </div>
       </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">是否特别推荐</label>
                <div class="col-sm-4">
                  <select name="recommendBook">
                   <option value="是" <c:if test="${list.recommendBook=='是' }">selected</c:if>>是</option>
                   <option value="否" <c:if test="${list.recommendBook=='否' }">selected</c:if>>否</option>
                </select>
                  
                </div>
       </div>
               <div class="form-group">
                <label class="col-sm-2 control-label" for="old_price">简介</label>
                <div class="col-sm-4">
                 <textarea name="introduce" id="introduce" rows="3" cols="120" >${list.introduce}</textarea>
                    
                </div>
       </div>

 			<div class="form-group" style="text-align: center">
            	<button  class="btn-info btn-lg">提交</button>        	
        	</div>
 </form>
    
    
    </div>

</body>
<script src="bootstrap-3.3.7/js/jquery-1.11.1.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.js"></script>
<!-- 二级联动 -->
<script>
function findSmallClass(){
	var largeClass = $("#largeClass").val();
	/*  alert(largeClass); */
	$.ajax({
		method:'post',
		url:'book/showSmall',
		data:{name:largeClass},
		success:function(result){
			  $('#smallclass option').remove(); //先清除掉二级框的option中的值 防止追加结果
			  $.each(result,function (index,items) {
                  smallname =items.name
                  $('#smallclass').append("<option value="+smallname+">"+smallname+"</option>");
                /*  alert(smallname)  */
              })
			 /* alert("success")  */
			
		},
		error:function(){
			alert("请求失败")
		}
	})
	
}
</script>
</html>