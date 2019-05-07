<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	font-size: 200%;
	color:skyblue;
	opacity: 0.75;
}


</style>
</head>
<body>

<div class="container">
<center>
<h2 > 妖怪管理系统---姜子牙专用-修改</h2>
   
    <form class="form-horizontal" action="monster" method="post">
    <input type="hidden" value="PUT" name="_method">
    <input type="hidden" name="monsterid" value="${m.monsterid}"/>
  <div class="form-group">
    <label for="mostername" class="col-sm-4 control-label">妖怪名称</label>
    <div class="col-sm-4">
						<input type="text" class="form-control" id="mosterName"
							name="mostername" value="${m.mostername}">
					</div>
  </div>

 <div class="form-group">
    <label for="email" class="col-sm-4 control-label">Email</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="email" name="email" 
       value="${m.email }">
    </div>
  </div>
  
  
  <div class="form-group">
    <label for="birthday" class="col-sm-4 control-label">妖怪生日</label>
    <div class="col-sm-4">
      <input type="date" class="form-control" id="birthday" name="birthday" 
      value='<fmt:formatDate value="${m.birthday}" pattern="yyyy-MM-dd"/>'>
    </div>
  </div>
  
 
   <div class="form-group">
    <label for="entry" class="col-sm-4 control-label">入职时间</label>
    <div class="col-sm-4">
      <input type="date" class="form-control" id="entry" name="entry"
       value='<fmt:formatDate value="${m.entry}" pattern="yyyy-MM-dd"/>'>
    </div>
  </div>
  <div class="form-group">
    <label for="name" class="col-sm-4 control-label">妖怪门派</label>
    <div class="col-sm-4">
     <select name="school"  id="name" class="form-control">
     
    <c:forEach items="${slist}" var="s">

    <c:if test="${s.schoolid==school1.schoolid}">
   
      <option value="${s.schoolid}" selected="selected" >${s.name}</option>
     </c:if>
     <c:if test="${s.schoolid!=school1.schoolid}">
  <option value="${s.schoolid}">${s.name}</option>
  </c:if>
  
  </c:forEach>
 
</select>
    </div>
    
    </div>
  <div class="form-group">
    <div class="col-sm-11">
      <button type="submit" class="btn btn-info">修改妖怪</button>
    </div>
  </div>
</form>
</center>
</div>
</body>
</html>