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
<link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript">
$(function(){
	
	$("#addUser").bootstrapValidator({
		
		feedbackIcons:{
	    	 
	    	 	valid:"glyphicon glyphicon-ok",
	    	 	
	    	 	invalid:"glyphicon glyphicon-remove",
	    	 	
	    	 	validating:"glyphicon glyphicon-refresh"
	    	 	
	     	},
	     	
	     	fields:{
	    	 
	    	 	name:{
	    	 		
	    	 		validators:{
	    	 			
	    	 			notEmpty:{
	    	 				
	    	 				message:'需要实名注册，请输入你的姓名'
	    	 				
	    	 			},
	    	 			
	    	 			regexp:{
					 
					 	regexp:/^[\u0391-\uFFE5]{2,10}$/,
						 message:'姓名必须是2-10位汉字'
					 }
	    	 			
	    	 		}
	    	 		
	    	 	},
	    	 	
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
				 		
				 		message:'用户名已存在，请重新输入',
				 		url:'UserServlet',
				 		type:'post',
				 		data:{
				 			
				 			userName:$('input[name=userName]').val(),
				 			action:'validateUserName'
				 			
				 		},
				 		delay:500
				 		
				 		
				 	}
				 	
				
			 	}
		 	},
		 	
		 	phone : {
				validators : {

					notEmpty : {
						message : '手机号码不能为空！*-*'
					},
					regexp : {
						regexp : /^1[3-9][0-9]{9}$/,

						message : '手机号码必须11个字符数字组成'
					}

				}

			},
			password:{
				 
				 
				 validators:{
					 
					 notEmpty:{
						 
						 message:'密码不能为为空'
					 },
					 regexp : {
							regexp : /^(\w|\W){6,15}$/, //必须是数字字母下划线3-15

							message : '密码必须必须是数字字母下划线6-15'
						},
					 different:{
						 
						 field:'userName',
						 message:'密码不能和用户名一样'
					 }
				 }
			 },
			zctime:{
				
                    validators:{
					 
					 notEmpty:{
						 
						 message:'注册时间不能为为空'
					 },
					 regexp : {
							regexp :/^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/,

							message : ' 注册时间格式不合法，注册时间格式必须是标准格式，如：2018-09-09'
						}
					 
			}
	    	 
	     	}
			 }
		
	});
	
});
</script>

<title>用户</title>
</head>
<body background="./jd/31.jpg">

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<form id="addUser" action="UserServlet?action=addUser"
					method="post">
					<h3 class="text-center text-warning">
						<font size="7">添加用户</font>
					</h3>
					

					<div class="form-group">
						<label class="text-primary">用户名:</label> <input type="text"
							name="userName" class="form-control"
							placeholder="须由6-12个英文字母、数字或者下划线组成" />
					</div>
					<div class="form-group">
						<label class="text-primary">密码:</label> <input type="password"
							name="password" class="form-control"
							placeholder="是由数字字母下划线3-15组成">
					</div>
					
					<br>
					<div class="form-group">
						<button type="submit" class="btn btn-block btn-success btn-xs">添加</button>
						<br>
					
						<button type="reset" class="btn  btn-block btn-warning btn-xs">重写</button>
						<br>
						<a href="showUser.jsp" class="btn btn-xs btn-info btn-block">Go Back</a>
					</div>
					<br>
					<br>
					<br>
					


				</form>
			</div>
		</div>
	</div>
</body>
</html>
