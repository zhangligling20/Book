<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String path=request.getContextPath();

String base=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/"+path+"/";
%>
<!-- --http://localhost :端口号/项目名/、-->
<!DOCTYPE html>
<html>
<head>
<!-- 1.要使用Bootstrap的话，必须是html5文档 -->
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script>
$(function(){
	
	$("tr:even").css("background-color","Beige");
	
	$("tr:odd").css("background-color","LightYellow");
	
	
	$("tr").mouseover(function(){
		$(this).css("background-color","skyblue");
	});
	
	$("tr").mouseout(function(){
		$("tr:even").css("background-color","Beige");
		
		$("tr:odd").css("background-color","LightYellow");
		
    	
	});
});
		window.onload=function(){
			
			var selectAll=document.getElementById("selectAll");
			
			var flag=false;
			//按钮1
			selectAll.onclick=function (){
				
				
				var check=document.getElementsByName("ids");
				
				for(var i=0;i<check.length;i++){
					
					check[i].checked=true;
				}
				
			};
			
			var unselsectAll=document.getElementById("unselectAll");
			
			
			unselsectAll.onclick=function(){
				
			var check=document.getElementsByName("ids");
			
				for(var i=0;i<check.length;i++){
					
					check[i].checked=false;
				}			
			
			};
			
			var fanxuan=document.getElementById("fanxuan");
			
			fanxuan.onclick=function(){
				
				var check=document.getElementsByName("ids");
				
				for(var i=0;i<check.length;i++){
					
					if(check[i].checked==true){
						
						
						check[i].checked=false;
						
					}else{
						
						check[i].checked=true;
					}
				
			}
			
			};
			
			var  deleteStudent=document.getElementById("deleteStudent");
			
			deleteStudent.onclick=function(){
			
				var check=document.getElementsByName("ids");
				
				
			var	flag=false;
				for(var i=0;i<check.length;i++){
					if(check[i].checked==true){
						
						
						flag=true;
						
						break;
						
					}
		
			}
			if(flag==false){
				
				alert("请至少勾选一个？？？");
				location.href="<%=base %>FenleiServlet?action=showFenleiByPage";
				return;
			}
			
			   var str="";
			for(var i=0;i<check.length;i++){
				if(check[i].checked==true){
					
					
					str+=check[i].value+",";
					
				}
		};
		
	str=str.slice(0,str.length-1);
	
	 var queren=confirm("你确定删除吗？");
	 
	 if(queren==true){
		 
		 location.href="<%=base %>FenleiServlet?action=deleteFenlei&ids="
				+ str;
		 
	 }else{
		 
		 location.reload();
	 }
		
		};
		};
	</script>

<title>Insert title here</title>
</head>
<body background="<%=base%>\jd\37.jpg">
	
		<center>	
		<div class="container">
			<caption align="center">
			<div class="panel panel-success ">
	 <div class="panel-heading">
	 
	 <div class="panel-title">
				<font size="6" face="黑体" class="text-primary">查看所有分类</font>
				</div>
				</div>
			</caption>
			</div>
			<table>

				<tr>
					<table  align="center" border="1" width="700px" height="450px"
						bordercolor="pink">
						<tr align="center">
						<td>选项</td>
							<td><font size="4"  face="黑体">编号</font></td>
				
							<td>id</td>
							<td>分类名称</td>
							
							
						</tr>
						<c:forEach items="${pb.beadList}" var="f" varStatus="s">
						<tr align="center">
						
						  <td> <input type="checkbox" name="ids" value="${f.fenleiid}"/></td>
				
						    <td> ${s.index+1}</td>
							<td>${f.fenleiid}</td>
							
							<td>${f.fenleiname}</td>
							
							<!-- <td><input type="submit" value="修改" /></td> -->
						</tr>
                        </c:forEach>
                        <td algin="center" colspan="5"  >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button id="deleteStudent" class="btn btn-info btn-sm">删除</button></td>
					</table>
					<button id="selectAll" class="btn btn-success btn-sm">全选</button ><button id="unselectAll" class="btn btn-warning  btn-sm">全不选</button><button id="fanxuan" class="btn btn-primary btn-sm">反选</button>
					<p><center>
					第${pb.pageNow }页/共${pb.pages }页
					<br/>
					
					
					&nbsp;&nbsp;&nbsp;&nbsp;
					<ul class="pager">
					<li><a href="<%=base %>FenleiServlet?action=showFenleiByPage&pageNow=1">首页</a></li>
					
					<c:if test="${pb.pageNow>1 }">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<li><a href="<%=base %>FenleiServlet?action=showFenleiByPage&pageNow=${pb.pageNow-1 }">上一页(Previous)</a></li>
					
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
					<li><a href="<%=base %>FenleiServlet?action=showFenleiByPage&pageNow=${i }">[${i}]</a></li>
					</c:otherwise>
					
					</c:choose>
					</c:forEach>
					&nbsp;&nbsp;
					<c:if test="${pb.pageNow<pb.pages }">
					<li><a href="<%=base %>FenleiServlet?action=showFenleiByPage&pageNow=${pb.pageNow+1 }">下一页(Next)</a></li>
					</c:if>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<li><a href="<%=base %>FenleiServlet?action=showFenleiByPage&pageNow=${pb.pages }">尾页</a></li>
					</ul>
					
					</center>
					</p>
				</tr>
				<tr align="center">
				
					<td align="center">没有您要的分类？点击这里<a href="<%=base %>addFenlei.jsp">添加分类！</a></td>
				</tr>
			</table>
			</div>
		</center>
	
</body>
</html>