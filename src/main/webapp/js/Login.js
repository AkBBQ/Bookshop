  $('#loginSubmit').click(function () {
    
       var isLogin=$('#LoginUserName').text();
         /*alert(isLogin);*/
             if(isLogin==null || isLogin==""){
            $.ajax({
                method: 'post',
                url: 'Login/login',
                data: {username: $('#username').val(), password: $('#password').val()},
                success: function (result) {
                	/*alert(result)*/
                    if (result === 1 || result === 2) {
                        $('#err_msg').html("用户名或密码错误")
                    } else if (result === 0) {
                        /*alert("登陆成功");*/
                     /*   $('#').html().innerHTML="${session.userinfo.getUsername()}";*/

                        window.location.href = "index"; //经测试这里的url是要写上项目名的
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
    $('#Adminlogin').click(function(){
    	var ad_username=$('#ad_username').val();
    	var ad_password=$('#ad_password').val();
    	$.ajax({
    		method:'post',
    		url:'Admin/login',
    		data:{username:ad_username,password:ad_password},
    		success:function(result){
    			if(result==1 || result==2){
    				/*alert("error")*/
    				$('#admin_err').html("用户名或者密码错误");
    			}else if(result==0){
    				/*alert("success")*/
    				window.location.href="admin/main.jsp";
    			}
    		},
    		error:function(){
    			alert("ERROR!");
    		},
    	})
    	
    	
    	
    })
    
    
    
    
     
    