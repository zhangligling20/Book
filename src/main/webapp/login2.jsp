<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script type="text/javascript" src="js/ajax.js">
</script>
<script type="text/javascript">

   function validateUserName() {
	   
	   var flag=true;
	
	   var userName=document.login.userName;
	   
	   var xmlhttp=getXMLHttpRequest();
	   
	   xmlhttp.open("POST","AdminServlet",true);
	   
	   xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	   
	   xmlhttp.send("action=validateUserName&userName="+userName.value);
	   
	   xmlhttp.onreadystatechange=function(){
		   
		   if(xmlhttp.readyState==4 && xmlhttp.status==200){
			   
			   var content=xmlhttp.responseText;
			   
			  // alert(content);
			   
			   var span=document.getElementById("userNameMsg");
			   
			   if(content=="0"){//用户名没有注册，提示先注册
				   
				   span.style.color="red";
			   
			       span.innerHTML="你输入的用户名错误，或者不存在";
			       
			       span.focus();
			       
			       flag=false;
				   
			   }else{//用户名存在，可以登录
				   
				   span.style.color="green";
				   
			       span.innerHTML="用户名存在，可以登录";
			
			       flag=true;
				   
			   }
			   
		   }
		   
	   }
	   
	   
	   return flag;
   }
   
   function test(){
	   
	 //  alert(validateUserName());
	   
	   return validateUserName();
	   
   }
</script>
<title>登录</title>
</head>
<body background="./jd/2.jpg">


	<form action="AdminServlet?action=login" method="post" name="login" enctype="application/x-www-form-urlencoded" onsubmit="return test()">
		<center>
			<table border="1" width="100%" height="1000px" cellspacing="0"
				bordercolor="white">

				<tr>

					<td align="center">
						<table frame="box" width="500px" height="400px"
							bordercolor="green">
							<tr>
								<td align="center" colspan="2"><font size="6" color="pink">会员登录</font></td>
							</tr>
							<tr>
								<td align="center"><font size="5" color="black">登录账号：</font></td>
								<td><input type="userName" name="userName" onblur="validateUserName()" /><span id="userNameMsg"></span></td>
								
								
							</tr>
							<tr>
								<td align="center"><font size="5" color="black">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
								<td><input type="password" name="password" /></td>
							</tr>

							<tr>
								<td></td>
								<td><input type="submit" value="确认登录"></td>
							</tr>
							<tr>
								<td></td>
								<td><font size="2" color="red"><a
										href="register2.jsp">还不是会员？立即注册</a></font></a></td>
							</tr>
						</table>
					</td>
				</tr>


			</table>

		</center>
     
	</form>
</body>
</html>