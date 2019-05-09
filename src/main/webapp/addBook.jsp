<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<script type="text/javascript">
	function validateBookName() {

		var bookname = document.addBook.bookname;

		nameReg = /^[\u0391-\uFFE5]{1,}$/;

		var flag = nameReg.test(bookname.value);

		var booknameMsg = document.getElementById("booknameMsg");

		if (flag) {

			booknameMsg.style.color = "green";

			booknameMsg.innerHTML = "图书名合法";

			return true;
		} else {

			booknameMsg.style.color = "red";

			booknameMsg.innerHTML = "图书名不合法，图书名必须2-10个汉字";

			return false;

		}
	}
	function validateBookprice() {

		var price = document.addBook.price;

		var Reg = /(?!^0*(\.0{1,2})?$)^\d{1,13}(\.\d{1,2})?$/; //必须是数字字母下划线3-15

		var priceMsg = document.getElementById("priceMsg");

		if (Reg.test(price.value)) {

			priceMsg.style.color = "green";

			priceMsg.innerHTML = "价格合法";

			return true;
		} else {

			priceMsg.style.color = "red";

			priceMsg.innerHTML = "价格不合法，价格必须必须是数字1-多位";

			return false;

		}

	}

	function validatePublisher() {

		var publisher = document.addBook.publisher;

		nameReg = /^[\u0391-\uFFE5]{1,}$/;

		var flag = nameReg.test(publisher.value);

		var pulisherMsg = document.getElementById("pulisherMsg");

		if (flag) {

			pulisherMsg.style.color = "green";

			pulisherMsg.innerHTML = "图书出版社名合法";

			return true;
		} else {

			pulisherMsg.style.color = "red";

			pulisherMsg.innerHTML = "图书出版社名不合法，图书出版社名必须2-10个汉字";

			return false;

		}
	}
	function JiaoYan() {

		return validateBookName() && validateBookprice() && validatePublisher();

	}
</script>
</head>
<body background=".\jd\37.jpg">
	<form action="BookServlet?action=addBook" method="post" name="addBook"
		onsubmit="return JiaoYan()"
		enctype="application/x-www-form-urlencoded">

		<table align="center" border="1" frame="box" width="500px"
			height="460px" bordercolor="pink">
			<center>
				<div class="container">
					<caption align="center">
						<div class="panel panel-success text-primary">
							<div class="panel-heading">

								<div class="panel-title">
									<font size="6" color="black"  class=" text-primary"face="黑体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;添加图书</font>
								</div>
							</div>
							</div>
							<hr size="5px" width="350px" color="sliver"></hr>
					</caption>
				
				<!--  <tr align="center">
						<td><font size="5" color="black" face="黑体">请选择分类：</font></td>
						<td>
					 	<select name="fenleiname">
					<c:forEach items="${updateList }" var="f">
					<option>${f.fenleiname}</option>
					
					</c:forEach> 
					</select>
					</td>
					
					</tr>
					-->
				<tr align="center">
					<td><font size="5" color="black" face="黑体">图书名称：</font></td>
					<td><input type="text" name="bookname"
						onblur="validateBookName()" /></td>
					<td><span id="booknameMsg"></span></td>
				</tr>
				<tr align="center">
					<td><font size="5" color="black" face="黑体">图书价格：</font></td>
					<td><input type="text" name="price"
						onblur="validateBookprice()" /></td>
					<td><span id="priceMsg"></span></td>
				</tr>
				<tr align="center">
					<td><font size="5" color="black" face="黑体">出版社：</font></td>
					<td><input type="text" name="publisher"
						onblur="validatePublisher()" /></td>
					<td><span id="pulisherMsg"></span></td>
				</tr>
				<tr align="center">
					<td><font size="5" color="black" face="黑体">状态：</font></td>
					<td><input type="text" name="status" /></td>

				</tr>
				<tr align="center">
					<td><font size="5" color="black" face="黑体">借书人：</font></td>
					<td><input type="text" name="borrow" value="无" /></td>

				</tr>
				<tr align="center">
					<td colspan="2" align="center"><input type="submit" value="添加" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="reset" value="重填" /></td>
				</tr>

</div>
			</center>
		</table>
	</form>


</body>
</html>