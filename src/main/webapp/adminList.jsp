<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<style>
h2 {
	font-size: 300%;
	color:skyblue;
	opacity: 0.75;
}


</style>
</head>
<body>

<div class="container">
<center>
<h2 > 妖怪管理系统---姜子牙专用</h2>
    <table class="table table-hover table-bordered table-striped">
    <tr>
    <td align="center">编号</td>
    <td align="center">用户名</td>
    <td align="center">密码</td>
    <td align="center">点击删除</td>
    <td align="center">点击修改</td>
    </tr>
    <c:forEach items="${alist}" var="a" >
     <tr>
    <td align="center">${a.aid}</td>
    <td align="center">${a.adminname}</td> 
    <td align="center">${a.password}</td>
    <td align="center"><a href="#" class="btn btn-warning">删除</a></td>
    <td align="center"><a href="#" class="btn btn-info">修改</a></td>
    
    </tr>
     </c:forEach>
    </table>
</center>
</div>
</body>
</html>