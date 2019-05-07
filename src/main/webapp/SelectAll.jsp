<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="SelectAll" method="post">

		<table width="900px" height="600px" border="1" align="center"
			bordercolor="99CCFF">
				<s:iterator value="#request.list" var="i">
			<tr><td>id</td><td><s:property value="id"/></td></tr>
			<tr><td>name</td><td><s:property value="name"/></td></tr>
			<tr><td>money</td><td><s:property value="money"/></td></tr>
			</s:iterator>
			
			</table>

			</form>
</body>
</html>