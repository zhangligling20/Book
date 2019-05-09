<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 1.要使用Bootstrap的话，必须是html5文档 -->
<meta charset="UTF-8">
<!-- 2.移动设备优先 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 3.导入核心的css文件 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
<!-- 4.需要引入JQuery文件 -->
<script type="text/javascript" src="bootstrap/js/jquery.js"></script>
<!-- 5.引入BootStrap的核心JS文件 -->
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<title>修改用户信息</title>
  <br>
   </br>
    <br>
   </br>
 <body background=".\jd\37.jpg">
  <form action="UserServlet?action=xiugaiUser" method="post">
  <input type="hidden" name="id" value="${u.id }"/>
  
     <table  align="center" border="1"frame="box" width="600px" height="460px" bordercolor="pink">
   <center>
   
  <font size="7" class="text-primary" face="黑体">修改用户信息</font>
     
     <tr align="center"><td><font size="5" color="black" face="黑体">真实姓名：</font></td><td><input type="text"  name="name" value="${u.name}"/></td></tr>
	 <tr align="center"><td><font size="5" color="black" face="黑体">用户名：</font></td><td><input type="text" name="userName" value="${u.userName}"/> </td></tr> 
	 <tr align="center"><td><font size="5" color="black" face="黑体">密码：</font></td><td><input type="text" name="password" value="${u.password}"/></td></tr> 
	 <tr align="center"><td><font size="5" color="black" face="黑体">手机号码：</font></td><td><input type="text" name="phone" value="${u.phone}"/></td></tr> 
	 <tr align="center"><td><font size="5" color="black" face="黑体">注册时间：</font></td><td><input type="text" name="zctime" value="${u.zctime}"/></td></tr>
	 <tr align="center"><td colspan="2" align="center"><button type="submit" class="btn btn-success" >修改用户</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="showUser.jsp">不想改了*—*，返回上一级</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="reset" class="btn btn-warning">重新填写</button></td></tr> 

  </center>
  </table>
  </form>
  </body>
</html>