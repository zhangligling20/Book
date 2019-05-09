<%@ page language="java"  import="com.oracle.web.bean.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生信息表</title>
</head>
<body background="./jd/37.jpg">
                
					
		<form action="UserServlet?action=xiugaiUser" method="post">
					
					<table  bgcolor="skyblue" cellspacing="2" align="center" border="1px"  width="500px"  height="600px">
					
					<caption align="top"> <font size="5"color="black"><b>学生信息表</b></font></caption>


					<input  type= "hidden" name="id" value="${u.id}"/> 

					 <tr><td>真实姓名</td><td><input type="text" name="name" value="${u.name}"/></td></tr>

					<tr><td>用户名</td><td><input type="text" name="userName" value="${ u.userName}"/></td></tr>

						<tr><td>密码</td><td><input type="text" name="password" value="${ u.password}"/></td></tr>

						<tr><td>手机号码</td><td><input type="text" name="phone" value="${ u.phone}"/></td></tr>
						
                       <tr><td>注册时间</td><td><input type="text" name="zctime" value="${ u.zctime}"/></td></tr> 
					

						<tr align="center"><td colspan="2"><input type="submit" value="修改"/><a href="showUser.jsp">取消</a></td></tr>

					

		</table>
					
		</form>
					
					
</body>
</html>