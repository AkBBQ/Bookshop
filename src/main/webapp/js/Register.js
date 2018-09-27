/*<!-- 动态验证用户名是否存在 -->*/
$('#rgs_username').on('input',function (e) {
    var addUsersName=$('#rgs_username').val();
/*alert(addUsersName)*/
    $.ajax({
        method: 'get',
        url: 'Login/login',
        data: {username:addUsersName},
        success: function (data) {
   		  if(data===0 || data===2){
   			  var showerr="用户名已经存在";
   			  $('#checkUse').html(showerr).css("color","red");
   		  }else if(data===1){
      		  var showsuc="可用";
      		  $('#checkUse').html(showsuc).css("color","green");
   		  }
        },
        error: function () {
            alert("彻底失败")
        }

    }) 


    })
    
  
$('#RegisterSubmit').click(function(){
	
	
	if($('#checkUse').text()=="可用"){
	var Rgs_username=$('#rgs_username').val();
	var Rgs_password=$('#rgs_password').val();
	var Rgs_phone=$('#rgs_phone').val();
	var Rgs_address=$('#rgs_address').val();
	
	var isuse=$('#checkUse').val();
	/*alert(isuse);*/
	
	
	$.ajax({
		method:'post',
		url:'Login/register',
		data:{username:Rgs_username,password:Rgs_password,phone:Rgs_phone,address:Rgs_address},
		success:function(result){
			
			alert("注册成功!");
			window.location.href="index";
		},
		error:function(){
			alert("注册失败!");
		},
		
	})
	}else{
		var showsuc1="用户名重复!";
		  $('#checkUse').html(showsuc1).css("color","red");
	}
	
})
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
/*    <!--验证手机号码是否合法-->*/
    var inputPerameter = $('#rgs_phone');
    var booleanValue = true, value;

    function test() {
        value = inputPerameter.val();
        if (value == '') {
            booleanValue = true;
        }
        if (value.length > 3) {
            subValue = value.substring(-1, 3);
            if (booleanValue && subValue.length == 3) {
                if (subValue.substring(1, 2) == '3' || subValue.substring(1, 2) == '5' || subValue.substring(1, 2) == '8') {
                    booleanValue = /^[1]{1}(([3]|[5]|[8]){1})([0-9]{1})$/.test(subValue);
                } else if (subValue.substring(1, 2) == '4') {
                    booleanValue = /^[1]{1}[4]{1}(([5]|[7]){1})$/.test(subValue);
                } else if (subValue.substring(1, 2) == '7') {
                    booleanValue = /^[1]{1}[7]{1}(([0]|[1]|[3]|[5]|[6]|[7]|[8]){1})$/.test(subValue);
                } else {
                    booleanValue = false;
                }
            }
        } else {
            if (value.length == 1) {
                booleanValue = /^[1]{1}$/.test(value);
            } else if (value.length == 2) {
                booleanValue = /^[1]{1}(([3]|[4]|[5]|[7]|[8]){1})$/.test(value);
            } else if (booleanValue && value.length == 3) {
                if (value.substring(1, 2) == '3' || value.substring(1, 2) == '5' || value.substring(1, 2) == '8') {
                    booleanValue = /^[1]{1}(([3]|[5]|[8]){1})([0-9]{1})$/.test(value);
                } else if (value.substring(1, 2) == '4') {
                    booleanValue = /^[1]{1}[4]{1}(([5]|[7]){1})$/.test(value);
                } else if (value.substring(1, 2) == '7') {
                    booleanValue = /^[1]{1}[7]{1}(([0]|[1]|[3]|[5]|[6]|[7]|[8]){1})$/.test(value);
                } else {
                    booleanValue = false;
                }
            }
        }
        if (!booleanValue || !/^\d*$/.test(value) || value.length < 11) {
            //显示错误标志
            $('.hint_str').css('display', 'block');
            $('.hint_str').html('格式错误');
            $('.hint_str').css('color', 'red');
        } else {
            //隐藏错误标志
            $('.hint_str').css('display', 'none');
        }
        if (/^\d{11}$/.test(value) && booleanValue) {
            //显示正确标志
            $('.hint_str').css('display', 'block');
            $('.hint_str').html('正确');
            $('.hint_str').css('color', 'lawngreen');
        }
    }

    
    
    
    