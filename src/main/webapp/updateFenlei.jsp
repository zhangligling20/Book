<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
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
	window.onload = function() {//页面加载完成

		ajax({

			method : "POST",
			url : "FenleiServlet",
			params : "action=updateFenlei",
			type : "xml",
			success : function(data) {

				var select = document.getElementById("fenleiList");

				var names = data.getElementsByTagName("fenleiname");
				//alert(names);
				for (var i = 0; i < names.length; i++) {

					var name = names[i];

					var opt = document.createElement("option");
					//alert("opt");
					var value;

					if (window.addEventListener) {//非ie

						value = name.textContent;

					} else {

						value = name.text;
					}

					opt.innerHTML = value;

					opt.value = value;

					select.appendChild(opt);

				}

			}

		});

	};

	/*
	
	var http=getXMLHttpRequest();
	    var select=document.getElementById("fenleiList");
	
	    http.open("POST","FenleiServlet",true);
	    

	     http.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		
	      http.send("action=updateShowFenlei");
		
		  http.onreadystatechange=function(){
			
			
			if(http.readyState==4 && http.status==200){
				
				var content=http.responseXML;
				
				
				var names=content.getElementsByTagName("name");
				
				for(var i=0;i<names.length;i++){
					
					var name=names[i];
					
					var opt=document.createElement("option");
					
					var value;
					
					if(window.addEventListener){
						
						value=name.textContent;
						
					}else{
						
						
						value=text;
					}
					
					opt.innerHTML=value;
					
					opt.value=value;
					
					
					select.appendChild(opt);
					
				}
				
			}
			
		}
		
	 */
</script>
</head>
<body background="./jd/37.jpg">
	<form action="FenleiServlet?action=xiugaiFenlei" method="post"
		enctype="application/x-www-form-urlencoded">
		<table align="center" width="500px" height="300px" border="1px"
			cellspacing="0" bordercolor="pink">
			<div class="container">
			<caption align="top">
				<h2>
				<div class="panel panel-success ">
	 <div class="panel-heading">
	 
	 <div class="panel-title">
					<font  size="6" class="text-center text-warning">修改分类页面</font>
					</div></div>
				</h2>
			</caption>
			</div>
			<tr align="center">
				<td>请选择您要修改的分类</td>
				<td><select name="fenleiname" id="fenleiList">
						<option>---请选择要修改的分类---</option>
				</select></td>
			</tr>
			<tr align="center">
				<td>请输入新的分类名称:</td>
				<td><input type="text" name="newname" /></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="修改" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="reset" value="清空" /></td>
			</tr>
			
		</table>
	</form>
</body>
</html>