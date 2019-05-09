<%@ page language="java" import="com.oracle.*,java.util.List"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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

<link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" />
<script type="text/javascript" src="icon/iconfont.js"></script>

<style type="text/css">
a {
	text-decoration: none;
}
</style>
<title>查看所有管理员信息</title>

<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript">
	window.onload = function() {

		var opt = {

			method : "POST",
			url : "AdminServlet",
			params : "action=showAdmin",
			type : "json",
			success : function(data) {

				var admin = data;//

				var id = document.getElementById("id");

				id.innerHTML = admin.id;

				var name = document.getElementById("name");

				name.innerHTML = admin.name;

				var phone = document.getElementById("phone");

				phone.innerHTML = admin.phone;

				var userName = document.getElementById("userName");

				userName.innerHTML = admin.userName;

				var password = document.getElementById("password");

				password.value = admin.password;

		<!--	
				-->	
			}
		};

		ajax(opt);

	};
</script>
</head>
<body background=".\jd\37.jpg">

	<table align="center" border="1" width="500px" height="460px"
		bordercolor="pink">
		<caption align="center">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="7" class="text-center text-warning" face="黑体">查看管理员信息</font>
		</caption>
		<br></br>

		<tr align="center">
			<td>编号</td>
			<td id="id"></td>
		</tr>
		<tr align="center">
			<td>姓名</td>
			<td id="name"></td>
		</tr>
		<tr align="center">
			<td>手机</td>
			<td id="phone"></td>
		</tr>
		<tr align="center">
			<td>账号</td>
			<td id="userName"></td>
		</tr>
		<tr align="center">
			<td>密码</td>
			<td><input type="password" id="password" disabled="disabled" /></td>
		</tr>
	<!--  	<tr align="center">
			<td>头像</td>
			<img id="touxiang" />
					</tr>-->
	</table>

</body>
</html>