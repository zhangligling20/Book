<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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


<script type="text/javascript" src="js/ajax.js"></script>

<script type="text/javascript">
$(function(){
	
	
	  $(".deleteId").click(function(){
			
		  //alert("ok")
		 var  $url=this.href;
		
		 $("#deleteForm").attr("action",$url);
		 
		 $("#deleteForm").submit();
		 
		 return false;
	  });
	 
	$(".register").bootstrapValidator({
		
		feedbackIcons:{
	    	 
	    	 	valid:"glyphicon glyphicon-ok",
	    	 	
	    	 	invalid:"glyphicon glyphicon-remove",
	    	 	
	    	 	validating:"glyphicon glyphicon-refresh"
	    	 	
	     	},
	     	
	     	fields:{
	    	 
	    	
	     		adminname:{
			 
			 	validators:{
				 
					notEmpty:{
					 
					 	message:'用户名不能为空'
					},
				 	regexp:{
					 
					 	regexp:/^[A-z0-9_]{6,12}$/,
					 	message:'用户名必须由6-12个英文字母、数字或者下划线组成'
				 	},
				 	
				 	remote:{
				 		
				 		url:"validateadminName.action",
				 		message:'用户名已存在，请重新输入',
				 		delay:500,
				 		type:'POST',
				 		data:function(validator){
				 			return {
				 				adminname:$("input[name=adminname]").val(),
				 			}
				 		}
				 		
				 	}
				 	
			 	}
		 	}
	}
		
	});
	
});
</script>
<title>Insert title here</title>
<style>
h2 {
	font-size: 200%;
	color:skyblue;
	opacity: 0.75;
}
</style>
</head>
<body>

<div class="container">
<center>
<h2 > 管理员系统---姜子牙专用-注册添加</h2>
   <hr width="1200px">
   
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				 <form  class="register" action="register1" method="post" >  
					
					<div class="form-group">
						<label for="adminname" class="text-primary">用户名:</label> 
						<!-- <input type="hidden" name="_method" value=""/> -->
						
						<input type="text" id="adminname" name="adminname" class="form-control"/>
					</div>
					<div class="form-group">
						<label for="password" class="text-primary">密码:</label> 
						
						<input type="password"
							name="password" id="password"class="form-control"
							>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-block btn-success ">添加</button>
						<br>
					
						<button type="reset" class="btn  btn-block btn-warning deleteId">重写</button>
						<br>
						<a href="login.jsp" class="btn btn-info ">去登录</a>
					</div>
  

</form>
</center>
</div>
 
    
    </form>
</body>
</html>