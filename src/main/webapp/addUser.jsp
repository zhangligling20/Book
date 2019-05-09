<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/ajax.js"></script>
<script>
function validateName(){
	
	var name=document.addUser.name;
	
	
		nameReg=/^[\u0391-\uFFE5]{2,10}$/; 
		
		var flag=nameReg.test(name.value);
		
		var nameMsg=document.getElementById("nameMsg");
		
		if(flag){
			
			nameMsg.style.color="green";
			
			nameMsg.innerHTML="姓名合法";
			
			return true;
		}else{
			
			nameMsg.style.color="red";
			
			nameMsg.innerHTML="姓名不合法，姓名必须2-10个汉字";
			
		return false;
	
}
}

function validateuserName(){//用户名验证1
	   //1.格式必须是数字字母下划线3-15
         var flag=true;
	var userName=document.addUser.userName;
	
		//var reg=/^[A-z0-9_]{3,15}$/; //必须是数字字母下划线3-15
var reg=/^[a-zA-Z0-9_-]{3,16}$/
		var userNameMsg=document.getElementById("userNameMsg");
		
		if( reg.test(userNameMsg.value)){
			
			userNameMsg.style.color="green";
			
			userNameMsg.innerHTML="用户名合法";
			
		//2.服务器验证    ·1用户名没有注册，提示先注册  ·2用户名存在，不可以注册"
			
	   var xmlhttp=getXMLHttpRequest();
		
		   	   xmlhttp.open("POST","UserServlet",true);
		   	   
		   	   xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		   	   
		   	   xmlhttp.send("action=validateUserName&userName="+userName.value);
		   	   
		   	   xmlhttp.onreadystatechange=function(){
		   		   
		   		   if(xmlhttp.readyState==4 && xmlhttp.status==200){
		   			   
		   			   var content=xmlhttp.responseText;
		   			   
		   			 //  alert(content);
		   			   
		   			   var span=document.getElementById("userNameMsg");
		   			   
		   			   if(content=="0"){//用户名没有注册，提示先注册
		   			 
		   				span.style.color="green";
			   			   
		   			       span.innerHTML="你输入的不存在，可以注册";
		   			       
		   			       span.focus();
		   			       flag=true;
		   				   
		   			   }else{//用户名存在，可以登录
		   			  
	   			        span.style.color="red";
 				   
 			               span.innerHTML="用户名存在，不可以注册";
 			       
 			            
 			              flag=false;
		   			   }
		   			   
		   		   }
		   		 return flag;
		   	   }	
		   	
		
  
  

			return true;
		}else{
			
			userNameMsg.style.color="red";
			
			userNameMsg.innerHTML="用户名不合法，用户名必须是数字.字母.下划线长度是3-15";
		
			return false;
	
}
  
	
}

             function validatephone(){
				 
				var phone=document.addUser.phone;
				
				
				var	Reg=/^1[3-9][0-9]{9}$/; //必须是数字字母下划线3-15
					
					var phoneMsg=document.getElementById("phoneMsg");
					
					if( Reg.test(phone.value)){
						
						phoneMsg.style.color="green";
						
						phoneMsg.innerHTML="手机号码合法";
						
						return true;
					}else{
						
						phoneMsg.style.color="red";
						
						phoneMsg.innerHTML="手机号码不合法，手机号码必须必须是数字11位";
					return false;
					
				
			} 
				 
			 }
             
             
             
             function validatePassword(){
					
					var password=document.addUser.password
					
						 var Reg=/^(\w|\W){6,15}$/; //必须是数字字母下划线3-15
						
						var passwordMsg=document.getElementById("passwordMsg");
						
						if( Reg.test(password.value)){
							
							passwordMsg.style.color="green";
							
							passwordMsg.innerHTML="密码合法";
							
							return true;
							
						}else{
							
							passwordMsg.style.color="red";
							
							passwordMsg.innerHTML="密码不合法，密码必须必须是数字字母下划线6-15位";
							
						return false;
					
				           }
				   }
			 
             function validateZcTime(){
					
					var zctime=document.addUser.zctime;
					
						
						 var Reg=/^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
						 
						var zctimeMsg=document.getElementById("zctimeMsg");
						
						if( Reg.test(zctime.value)){
							
							zctimeMsg.style.color="green";
							
							zctimeMsg.innerHTML="注册时间格式合法";
							
							return true;
							
						}else{
							
							zctimeMsg.style.color="red";
							
							zctimeMsg.innerHTML="注册时间格式不合法，注册时间格式必须是标准格式，如：2018-09-09";
							
						return false;
					
				           }
				   }
			 
			 
             
             function JiaoYan(){
     			
     			return validateName()&&validatephone()&&validateuserName()&&validatePassword()&&validateZcTime();
     			
     		}

</script>
</head>
<body background=".\jd\37.jpg">
	<form action="UserServlet?action=addUser" method="post"  name="addUser" enctype="application/x-www-form-urlencoded" onsubmit="return JiaoYan()">
		<table>
			<table align="center" border="1" frame="box" width="600px"
				height="460px" bordercolor="pink">
				<center>

					<caption align="center">
					
						<font size="6" color="black" face="黑体">添加用户</font>
					</caption>

					<tr align="center">
						<td><font size="5" color="black" face="黑体">真实姓名：</font></td>
						<td><input type="text" name="name" onblur="validateName()" /></td>
						<td><span id="nameMsg"></span></td>
					</tr>
					<tr align="center">
						<td><font size="5" color="black" face="黑体">用户名：</font></td>
						<td><input type="text" name="userName" onblur="validateuserName()" /></td>
						<td><span id="userNameMsg"></span></td>
					</tr>
					<tr align="center">
						<td><font size="5" color="black" face="黑体">密码：</font></td>
						<td><input type="text" name="password" onblur="validatePassword()" /></td>
						<td><span id="passwordMsg"></span></td>
					</tr>
					<tr align="center">
						<td><font size="5" color="black" face="黑体">手机号码：</font></td>
						<td><input type="text" name="phone" onblur="validatephone()" /></td>
						<td><span id="phoneMsg"></span></td>
					</tr>
					<tr align="center">
						<td><font size="5" color="black" face="黑体">注册时间：</font></td>
						<td><input type="text" name="zctime" onblur="validateZcTime()" /></td>
						<td><span id="zctimeMsg"></span></td>
					</tr>
					
						<!--  			<tr>
					<td align="center"> 头像上传：<input type="file" name="touxiang"/></td>
					<td align="center" >
					<input type="submit" value="上传"/></td>
					</tr>-->
					<tr align="center">
						<td colspan="3" align="center"><input type="submit"
							value="添加用户" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="重新填写" /></td>
					</tr>


				</center>
			</table>
			</form>
</body>
</html>