<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改密码</title>
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript">
   var flag;

function  validatePassword(){
	 
	var password=document.xiugaipassword.password;  
	 
	  var passwordMsg=document.getElementById("passwordMsg");
	  
	 ajax({
		 method:"POST",
		 url:"AdminServlet",
		 params:"action=validateAdminpassword&password="+password.value,
		 type:"text",
		 success:function(data){
			 if(data=="1"){
				 passwordMsg.style.color="green";
					
					passwordMsg.innerHTML="密码正确";
					
					flag=true;
					
			 }else{
				 
				 passwordMsg.style.color="red";
					
					passwordMsg.innerHTML="密码输入错误，请重新输入！";
					
					password.focus();
					
					flag=false;
			 }
		 }
		 
	 });
	 
}
		
       function validateNewPassword(){
    	   
    		 var password=document.xiugaipassword.password;  
     	    
    	   var newpassword=document.xiugaipassword.newpassword;
    	   
    	   var Reg=/^(\w|\W){6,15}$/; //必须是数字字母下划线3-15
     	 // alert("ok");
    	   
     	  var newpasswordMsg=document.getElementById("newpasswordMsg");
    	   
			if( Reg.test(newpassword.value)){
				
				if(newpassword.value==password.value){
					
					newpasswordMsg.style.color="skyblue";
					
					newpasswordMsg.innerHTML="密码不合法，新密码不能和原密码一样！";
						
					flag=false;
				}else{
					
				newpasswordMsg.style.color="green";
				
				newpasswordMsg.innerHTML="密码合法,可以使用！";
								
				flag=true;
			}
			}else{
				
				newpasswordMsg.style.color="red";
				
				newpasswordMsg.innerHTML="密码不合法，密码必须必须是数字字母下划线6-15位";
				
				flag=false;
		
	           }
       }
       
       function validateRenewPassword(){
    	   
    	   var newpassword=document.xiugaipassword.newpassword;
    	   
    	   var renewpassword=document.xiugaipassword.renewpassword;
    	   
    	   var renewpasswordMsg=document.getElementById("renewpasswordMsg");
    	   
    		if( renewpassword.value==newpassword.value){
				
    			renewpasswordMsg.style.color="green";
				
    			renewpasswordMsg.innerHTML="密码一样，合法";
				
    			flag=true;
    			
			}else{
				
				renewpasswordMsg.style.color="red";
				
				renewpasswordMsg.innerHTML="密码不一致，密码必须是数字字母下划线组成6-15位";
			
			flag=false;
		
	       }
       }
      function test(){
    	  
    	  
    	  return  flag&&validateNewPassword()&&validateRenewPassword();
      }  

</script>
</head>
<body background=".\jd\37.jpg">
	<form action="AdminServlet" name="xiugaipassword" onsubmit="return test()" enctype="application/x-www-form-urlencoded">
	
	        <input type="hidden" name="action" value="xiugaiPassword"> 
			<table align="center" border="1" frame="box" width="500px"
				height="460px" bordercolor="pink">
				<center>
					<caption align="center">
						<font size="6" color="black" face="黑体">修改密码</font>
						<hr size="5px" width="350px" color="red"></hr>
					</caption>
					
					<tr align="center">
						<td><font size="5" color="black" face="黑体">原密码：</font></td>
						<td><input type="text" name="password" onblur="validatePassword()"/></td>
						<td><span id="passwordMsg"></span></td>
					</tr>
					
					<tr align="center">
						<td><font size="5" color="black" face="黑体">新密码：</font></td>
						<td><input type="text" name="newpassword" onblur="validateNewPassword()"/></td>
						<td><span id="newpasswordMsg"></span></td>
					</tr>
					
					<tr align="center">
						<td><font size="5" color="black" face="黑体">确认新密码：</font></td>
						<td><input type="text" name="renewpassword" onblur="validateRenewPassword()" /></td>
						<td><span id="renewpasswordMsg"></span></td>
					</tr>

					<tr align="center">
						<td colspan="2" align="center"><input type="submit"
							value="确认修改" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="reset" value="重填" /></td>
					</tr>


				</center>
			</table>
</form>
</body>
</html>