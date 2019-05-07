<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">

  $(function(){
	  
	  $(".deleteId").click(function(){
		
		  //alert("ok")
		 var  $url=this.href;
		
		 $("#deleteForm").attr("action",$url);
		 
		 $("#deleteForm").submit();
		 
		 return false;
	  });
	 
  });
  
  

</script>
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
    <td align="center">妖怪编号</td>
    <td align="center">妖怪姓名</td>
    <td align="center">妖怪邮箱</td>
    <td align="center">妖怪生日</td>
    <td align="center">妖怪入职时间</td>
    <td align="center">妖怪门派</td>
    <td align="center">点击删除</td>
    <td align="center">点击修改</td>
    </tr>
   <c:forEach items="${pb.beanList }" var="m">
     <tr>
     
     
    <td align="center">${m.monsterid }</td>
    <td align="center">${m.mostername}</td>
    <td align="center">${m.email }</td>
    <td align="center">
        <fmt:formatDate value="${m.birthday}" pattern="yyyy-MM-dd"/>
    
    </td>
    <td align="center">
    
    <fmt:formatDate value="${m.entry}" pattern="yyyy-MM-dd"/>


   </td>
    <td align="center">${m.school1.name }</td>
    <td align="center"><a href="monster/${m.monsterid}" class="deleteId btn btn-warning">删除</a></td>
    <td align="center"><a href="monster/${m.monsterid}" class="btn btn-info">修改</a></td>
    
    </tr>
    </c:forEach>
     
    </table>
    <!-- 一个隐藏表单 -->
    <form action="" method="post" id="deleteForm">
    <input type="hidden" name="_method" value="DELETE"/>
    
    </form>
    
     
    <center>
      <div  >
				<p><center>
					第${pb.pageNow }页/共${pb.pages }页
					<br/>
					
					
					&nbsp;&nbsp;&nbsp;&nbsp;
					<ul class="pager">
					<li><a href="showByPage?pageNow=1">首页</a></li>
					
					<c:if test="${pb.pageNow>1 }">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<li><a href="showByPage?pageNow=${pb.pageNow-1 }">上一页(Previous)</a></li>
					
					</c:if>&nbsp;&nbsp;
					
						<c:choose>
					<c:when test="${pb.pages<=10 }">
					<c:set var="begin" value="1"></c:set>
					<c:set var="end" value="${pb.pages }"></c:set>
					</c:when>
					<c:otherwise>
					<c:set var="begin" value="${pb.pageNow-5 }"></c:set>
					<c:set var="end" value="${pb.pageNow+4 }"></c:set>
					<c:if test="${begin<=1 }">
					<c:set var="begin" value="1"></c:set>
					<c:set var="end" value="10"></c:set>
					</c:if>
					<c:if test="${end>=pb.pages }">
					<c:set var="begin" value="${pb.pages-9 }"></c:set>
					<c:set var="end" value="${pb.pages}"></c:set>
					
					</c:if>
					</c:otherwise>
					</c:choose>
					<c:forEach begin="${begin}" end="${end }" var="i">
					
					<c:choose>
					<c:when test="${pb.pageNow==i }">
					<li><span class="active">${i}(current)</span></li>
					</c:when>
					<c:otherwise>
					<li><a href="showByPage?pageNow=${i }">[${i}]</a></li>
					</c:otherwise>
					
					</c:choose>
					</c:forEach>
					&nbsp;&nbsp;
					<c:if test="${pb.pageNow<pb.pages }">
					<li><a href="showByPage?pageNow=${pb.pageNow+1 }">下一页(Next)</a></li>
					</c:if>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
					<li><a href="showByPage?pageNow=${pb.pages }">尾页</a></li>
					</ul>
					
					</center>
					</p>
					</div>

		</center>
		<hr>
		<p>
  </center>

</div>
  <p align="center"><a href="addUI" class="btn btn-info">添加妖怪</a></p>
</body>
</html>