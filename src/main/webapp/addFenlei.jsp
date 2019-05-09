<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


<!--<c:if test="${!(empty name) }">
<script>
alert("${name}");
</script>
  <c:remove var="name" scope="session"/>

 </c:if>-->
 
 <script type="text/javascript" src="js/ajax.js">
</script>
<script type="text/javascript">


   function validatefenleiName() {
	   
	   var flag=true;
	
	   var fenleiname=document.addFenlei.fenleiname;
	   
	   var xmlhttp=getXMLHttpRequest();
	   
	   xmlhttp.open("POST","FenleiServlet",true);
	   
	   xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	   
	   xmlhttp.send("action=validateFenleiName&fenleiname="+fenleiname.value);
	   
	   xmlhttp.onreadystatechange=function(){
		   
		   if(xmlhttp.readyState==4 && xmlhttp.status==200){
			   
			   var content=xmlhttp.responseText;
			   
			  // alert(content);
			   
			   var span=document.getElementById("fenleiNameMsg");
			   
			   if(content=="0"){//用户名没有注册，提示先注册
				   
				   span.style.color="green";
			   
			       span.innerHTML="你输入的分类名错误，或者不存在,可以添加";
			       
			       span.focus();
			       
			       flag=true;
				   
			   }else{//用户名存在，可以登录
				   
				   span.style.color="red";
				   
			       span.innerHTML="分类名称已经存在，不可以添加~~~~~";
			
			       flag=false;
				   
			   }
			   
		   }
		   
	   }
	   
	   
	   return flag;
   }
   
   function test(){
	   
	   alert(validatefenleiName());
	   
	   return validatefenleiName();
	   
   }
</script>
<title>分类</title>
</head>
<body background=".\jd\37.jpg" >
   <form  action="FenleiServlet?action=addFenlei" method="post" name="addFenlei" enctype="application/x-www-form-urlencoded" onsubmit="return test()" >
 
 <div class="container-fluid">  
 <table  align="center" border="1" width="500px" height="260px" bordercolor="pink">
   <center>
   <div class="container-fluid">
   <caption align="center">
   
   <div class="panel panel-success ">
	 <div class="panel-heading">
	 
	 <div class="panel-title"><font size="6" class="text-center text-warning">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;添加分类</font> 
	 
	 </div></div></caption>
   
    <tr align="center"><td ><font size="5"  >请输入分类名称:</font></td><td><input type="text" name="fenleiname"  onblur="validatefenleiName()"/></td>
    <td><span id="fenleiNameMsg"></span></td>
    </tr>
	<tr align="center"><td colspan="2" align="center"><input type="submit" value="添加"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"/></td></tr>
   </center>
   
   </table>
   </div>
   </form>
   </body>
</html>