<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body background=".\jd\37.jpg">
	<form action="FenleiServlet?action=xiugaiFenlei" method="post">
		<table align="center" border="1" frame="box" width="400px"
			height="160px" bordercolor="pink">
			<center>
				<caption align="center">
					<font size="6" color="black" face="黑体">修改分类页面</font>
					<hr size="5px" width="350px" color="red"></hr>
				</caption>
				<tr align="center">
					<td><font size="5" color="black" face="黑体">请输入新的分类名称:</font></td>
					<td><input type="text" name="fenleiname" /></font></td>
					
				</tr>
				<tr align="center">
					<td colspan="2" align="center"><input type="submit" value="修改" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="reset" value="清空" /></td>
				</tr>
			</center>
		</table>
		<form>
</body>
</html>