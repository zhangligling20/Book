<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
<title>Insert title here</title>
<style type="text/css">
#div2 {
	margin-left: 20px;
}
#div1{

	height: 840px;
	background-image: url("jd/37.jpg");
	background-size: cover;
}

   margin-left: 20px;
.col {
	width: 1000px;
	height: 500px;
}

#f1 {
	color: #337AB7;
	width: 800px;
}
#li {
	color: #337AB7;
	font-size: 17px;
}


</style>

<script>
	$(function() {

		$("tr:even").css("background-color", "Beige");

		$("tr:odd").css("background-color", "LightYellow");

		$("tr").mouseover(function() {
			$(this).css("background-color", "skyblue");
		});

		$("tr").mouseout(function() {
			$("tr:even").css("background-color", "Beige");

			$("tr:odd").css("background-color", "LightYellow");

		});
	});
	window.onload = function() {

		var selectAll = document.getElementById("selectAll");

		var flag = false;
		//按钮1
		selectAll.onclick = function() {

			var check = document.getElementsByName("ids");

			for (var i = 0; i < check.length; i++) {

				check[i].checked = true;
			}

		};

		var unselsectAll = document.getElementById("unselectAll");

		unselsectAll.onclick = function() {

			var check = document.getElementsByName("ids");

			for (var i = 0; i < check.length; i++) {

				check[i].checked = false;
			}

		};

		var fanxuan = document.getElementById("fanxuan");

		fanxuan.onclick = function() {

			var check = document.getElementsByName("ids");

			for (var i = 0; i < check.length; i++) {

				if (check[i].checked == true) {

					check[i].checked = false;

				} else {

					check[i].checked = true;
				}

			}

		};

		var deleteStudent = document.getElementById("deleteStudent");

		deleteStudent.onclick = function() {

			var check = document.getElementsByName("ids");

			var flag = false;
			for (var i = 0; i < check.length; i++) {
				if (check[i].checked == true) {

					flag = true;

					break;

				}

			}
			if (flag == false) {

				alert("请至少勾选一个？？？");

				return;
			}

			var str = "";
			for (var i = 0; i < check.length; i++) {
				if (check[i].checked == true) {

					str += check[i].value + ",";

				}
			}
			;

			str = str.slice(0, str.length - 1);

			var queren = confirm("你确定删除吗？");

			if (queren == true) {

				location.href = "BookServlet?action=deleteBook&ids=" + str;

			} else {

				location.reload();
			}

		}

		var outputAll = document.getElementById("outputAll");

		outputAll.onclick = function() {

			var queren = confirm("你确定导出所有页面数据吗？");

			if (queren == true) {

				window.location.href = "OutPutBookServlet?action=all";
			}

		};

		var outputSelect = document.getElementById("outputSelect")

		outputSelect.onclick = function() {

			var check = document.getElementsByName("ids");

			var flag = false;
			for (i = 0; i < check.length; i++) {
				if (check[i].checked == true) {

					flag = true;

					break;

				}

			}
			if (flag == false) {

				alert("请至少勾选一个？？？");

				return;
			}

			var str = "";
			for (var i = 0; i < check.length; i++) {

				if (check[i].checked == true) {

					str += check[i].value + ",";

				}
			}
			str = str.slice(0, str.length - 1);

			var queren = confirm("你确定导出所选用户的数据吗？");

			if (queren == true) {

				// window.location.href = "OutPutUserServlet?action=outSelect&ids="+ str;
				window.location.href = "OutPutBookServlet?action=outputSelect&ids="
						+ str;
			}

		};

	};
</script>

</head>
<body background=".\jd\37.jpg">

<div class="container-fluid" id="div1">
<center>
<div class="col col-md-4  col-md-offset-4" id="div2">
			<ul class="nav nav-tabs">
				<li><a href="addBook2.jsp">添加图书</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">高级搜索<span class="caret"></span></a>
					<ul class="dropdown-menu dropdown-menu" role="menu">
						<li>
							<form action="BookServlet" class="form-horizontal" id="f1">
							
							   <!-- 隐藏域，用来传递action -->
							  
							   <input type="hidden" name="action" value="findBookByWhere"> 

								<div class="control-group   ">
									<br>
									<label class="col-sm-4  control-label ">选择分类： </label>
									<div class="controls col-sm-6 ">
										<select name="fenleiname" class="form-control  input-sm">
											<option>----请选择----</option>
											<c:forEach items="${list }" var="s">

												<option>${s.fenleiname}</option>
											</c:forEach>
										</select><br>
									</div>
								</div>

								<div class="control-group  ">
									<label class="col-sm-4  control-label  ">书名:</label>
									<div class="controls col-sm-6 ">
										<input name="bookname" type="text" class="form-control  input-sm" /><br>
									</div>
								</div>

								<div class="control-group   ">
									<label class="col-sm-4 control-label  "> 出版社:</label>
									<div class="controls  col-sm-6">
										<input name="publisher" type="text" class="form-control  input-sm" /><br>
									</div>
								</div>


								<div class="control-group   ">
									<label class="col-sm-4 control-label ">借书人:</label>
									<div class="controls  col-sm-6">
										<input name="borrow" type="text" class="form-control  input-sm" /><br>
									</div>
								</div>

								<div class="control-group    ">
									<label class="control-label col-sm-4 "> 状态:</label>
									<div class="controls  col-sm-6">
										<input name="status" type="text" class="form-control  input-sm" /><br>
									</div>
								</div>

								<div class="control-group  ">

									<div class="controls ss">
										<button type="submit" class="btn   btn-info ">
											<span class="glyphicon glyphicon-search"></span> 开始搜索
										</button>
										<br>
										<br>
									</div>
								</div>

							</form>
						</li>

					</ul>
					</li>
			</ul>
</div>

<center>
<br>
<br>
<br>
<div class="container">

<caption align="center">
					<div class="panel panel-success ">
						<div class="panel-heading">

							<div class="panel-title">
								<font size="6" class="text-center text-warning" face="黑体">查看图书</font>
							</div>
						</div>
					</div>
				</caption>
				</div>
				<div class="panel-body">

				<table align="center" border="1" width="800px" height="360px"
					bordercolor="pink">
					<tr align="center">
						<td>选项</td>
						<td>图书编号</td>
						<td>图书分类</td>
						<td>图书名称</td>
						<td>图书价格</td>
						<td>图书出版社</td>
						<td>状态</td>
						<td>借书人</td>
						<td>修改</td>
					</tr>
					<c:forEach items="${pb.beadList}" var="b" varStatus="s">
						<tr align="center">
							<td><input type="checkbox" name="ids" value="${b.id}" /></td>
							<td>${s.index+1}</td>
                             <td>${b.fenleiname}</td>
							<td>${b.bookname}</td>
							<td>${b.price }</td>
							<td>${b.publisher }</td>
							<td>${b.status }</td>
							<td>${b.borrow }</td>

							<td><a href="BookServlet?action=showOne&id=${b.id }">修改</a></td>
						</tr>
					</c:forEach>

				</table>
				</div>

				<button id="selectAll" class="btn btn-success btn-xs">全选</button>
				<button id="unselectAll" class="btn btn-warning  btn-xs">全不选</button>
				<button id="fanxuan" class="btn btn-primary btn-xs">反选</button>
				<button id="outputSelect" class="btn btn-success btn-xs">导出选择</button>
				<button id="outputAll" class="btn btn-info btn-xs">导出全部</button>

				<td algin="center" colspan="5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button id="deleteStudent" class="btn btn-danger btn-sm">删除</button>
				</td>
            <center>
				<p>
				
					第${pb.pageNow }页/共${pb.pages }页 <br /> &nbsp;&nbsp;&nbsp;&nbsp;


					<ul class="pager">
						<li><a href="BookServlet?action=showBookByPage&pageNow=1">首页</a></li>
						<c:if test="${pb.pageNow>1 }">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<li><a
								href="BookServlet?action=showBookByPage&pageNow=${pb.pageNow-1 }">上一页(Previous)</a></li>

						</c:if>
						&nbsp;&nbsp;


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
									<li><a
										href="BookServlet?action=showBookByPage&pageNow=${i }">[${i}]</a></li>
								</c:otherwise>

							</c:choose>
						</c:forEach>


						&nbsp;&nbsp;
						<c:if test="${pb.pageNow<pb.pages }">
							<li><a
								href="BookServlet?action=showBookByPage&pageNow=${pb.pageNow+1 }">下一页(Next)</a></li>
						</c:if>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<li><a
							href="BookServlet?action=showBookByPage&pageNow=${pb.pages }">尾页</a></li>
					</ul>

				
				</p>
</center>
			</tr>
			<center>
					<p align="center">这里没有您想要的图书？点击这里<a class="btn btn-xs btn-success" href="addBook2.jsp">添加图书！</a></p>
			</center>
			</div>
		

	</center>
	</div>
	
	</div>
</center>
	
</body>
</html>