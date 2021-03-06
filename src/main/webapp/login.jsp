<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<!-- 2.移动设备优先 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 3.导入核心的css文件 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
<link rel="stylesheet" href="bootstrap/css/bootstrapValidator.css">
<!-- 4.需要引入JQuery文件 -->
<script type="text/javascript" src="bootstrap/js/jquery.js"></script>
<!-- 5.引入BootStrap的核心JS文件 -->
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrapValidator.js"></script>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript">
$(function(){
	
	$("#login").bootstrapValidator({
		
		feedbackIcons:{
	    	 
	    	 	valid:"glyphicon glyphicon-ok",
	    	 	
	    	 	invalid:"glyphicon glyphicon-remove",
	    	 	
	    	 	validating:"glyphicon glyphicon-refresh"
	    	 	
	     	},
	     	
	     	fields:{
	    	 
	    	 	userName:{
			 
			 	validators:{
				 
					notEmpty:{
					 
					 	message:'用户名不能为空'
					},
				 	regexp:{
					 
					 	regexp:/^[A-z0-9_]{6,12}$/,
					 	message:'用户名必须由6-12个英文字母、数字或者下划线组成'
				 	},
				 	
				 	remote:{
				 		
				 		message:'用户名不存在，不可以登录',
				 		url:'AdminServlet',
				 		type:'post',
				 		data:{
				 			
				 			userName:$('input[name=userName]').val(),
				 			action:'validateUserName2'
				 			
				 		},
				 		delay:500
				 		
				 		
				 	}
				 	
				
			 	}
		 	},
		 
		 	password:{
				 
				 
				 validators:{
					 
					 notEmpty:{
						 
						 message:'密码不能为空'
					 },

					 different:{
						 
						 field:'userName',
						 message:'密码不能和用户名一样'
					 },
					 regexp:{
						 
						 	regexp:/^[A-z0-9_]{6,12}$/,
						 	message:'密码必须由6-12个英文字母、数字或者下划线组成'
					 	},
					 	
				   remote:{
					 		
					 		message:'密码不正确，请重新输入！',
					 		url:'AdminServlet',
					 		type:'post',
					 		data:{
					 			
					 			password:$('input[name=password]').val(),
					 			action:'validateAdminpassword'
					 			
					 		},
					 		delay:500
					 		
					 		
					 	}
					 	
				 }
			 }
			 
	    	 
	     	}
		
	});
	
});
</script>

<title>login</title>
</head>
<body  background="./jd/31.jpg">
<div class="container">
<div class="row">
	<div class="col-md-5 text-left">
		<font size="7" color="red"><b>Baidu</b></font><font
						size="6" color="black"><b>图书系统</b></font> <font color="gray"><b>|</b></font><font
						size="5" color="maroon"><b>登录</b><hr style="color:green" width="1200px"class="text-success"></font>
						
	</div>
	<div class="col-md-7"></div>
</div>

</div>
 
<div class="container">                                                                                                                                                                                                                                                                                   
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<form id="login" action="AdminServlet?action=login" method="post">
				<h3 class="text-center text-warning"><font size="6">会员登录</font></h3>
				
                <div class="form-group">
                      <label class="text-primary">用户名:</label>
                      <input type="text" name="userName" class="form-control" placeholder="须由6-12个英文字母、数字或者下划线组成"/>
                </div>
                <div class="form-group">
                      <label class="text-primary">密码</label>
                      <input type="password" name="password" class="form-control" placeholder="是由数字字母下划线3-15组成"> 
                  </div>
                  
                  <div class="form-group">
                     <button type="submit" class="btn btn-success btn-block">登录</button>
                     <br>
                     <br>
                     <a href="register2.jsp" class="btn btn-block btn-warning">还不是会员？立即注册</a>
                  </div>
                  <br><br><br><br><br><br><br><br>
                  <p>
                  &nbsp; &nbsp;		  &nbsp;  &nbsp;  &nbsp;<font size="3" class="text-primary">
                  		Baidu公司版权所有&copy;2018-2089
                  	</font>
                  	
                  </p>
                
			</form>
		</div>
	</div>
</div>
</body>
</html>	