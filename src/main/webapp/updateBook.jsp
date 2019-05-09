<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>修改分类</title>
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript">

</script>
</head>
<body background=".\jd\37.jpg">
	<form  method="post">
		<table>
			<table align="center" border="1"  width="500px"
				height="460px" bordercolor="pink">
				<center>
					<caption align="center">
						<h3 class="text-center text-warning">
						<font size="7">修改图书</font>
					</h3>
					
					</caption>
				 <!--  <tr align="center">
						<td><font size="5" color="black" face="黑体">请选择分类：</font></td>
						<td>
							<select name="fenleiname" id="fenleiList" value="${b.fenleiname}">
					<c:forEach items="${list }" var="f">
					<option>${f.fenleiname}</option>
					
					</c:forEach>
						</td>
					</tr>--> 
					
					<tr align="center">
						<td><font size="4" color="black" face="黑体">分类：</font></td>
						<td><input type="text" name="fenleiname" value="${b.fenleiname}" /></td>
					</tr>
					<tr align="center">
						<td><font size="5" color="black" face="黑体">图书名称：</font></td>
						<td><input type="text"  name="bookname" value="${b.bookname}"/></td>
					</tr>
					<tr align="center">
						<td><font size="5" color="black" face="黑体">图书价格：</font></td>
						<td><input type="text"  name="price" value="${b.price }"/></td>
					</tr>
					<tr align="center">
						<td><font size="5" color="black" face="黑体">出版社：</font></td>
						<td><input type="text"  name="price" value="${b.price }"/></td>
					</tr>
					<tr align="center">
						<td><font size="5" color="black" face="黑体">状态：</font></td>
						<td><input type="text"  name="price" value="${b.price }"/></td>
					</tr>
					<tr align="center">
						<td><font size="5" color="black" face="黑体">借书人：</font></td>
						<td><input type="text" value="无"  name="price" value="${b.price }"/></td>
					</tr>
					<tr align="center">
						<td colspan="2" align="center"><input type="submit" value="修改" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="reset" value="重填" /></td>
					</tr>


				</center>
			</table>
			</form>
</body>
</html>