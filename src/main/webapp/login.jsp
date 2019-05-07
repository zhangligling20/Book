<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<h2 > 妖怪管理系统---姜子牙专用-----登录页面</h2>
<img width="700px" src="./imges/1.jpg" class="img-rounded">
<hr  width="900px">
   <form class="form-horizontal" id="login" action="login" method="post">
 <div class="form-group">
    <label for="adminname" class="col-sm-4 control-label">用户名</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="adminname" name="adminname">
    </div>
  </div>

 <div class="form-group">
    <label for="password" class="col-sm-4 control-label">密码</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="password" name="password">
    </div>
  </div>
  
   <div class="form-group">
    <div class="col-sm-11">
      <button type="submit" class="btn btn-primary">登录</button>
    </div>
  </div>
  
  
  <div class="form-group">
    <div class="col-sm-11">
     <a href="register.jsp">还没有注册？请先注册~~~</a>
    </div>
  </div>
</form>
</center>
</div>
</body>
</html>