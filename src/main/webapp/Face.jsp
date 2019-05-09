<%@ page language="java" contentType="text/html; charset=UTf-8"
    pageEncoding="UTf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%	String path=request.getContextPath();
       
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>
<html>
<head>
<base   href="<%=basePath %>">
<meta http-equiv="Content-Type" content="text/html; charset=UTf-8">

<style type="text/css">


   table{
   
   margin-top: 200px;
   
   
   
   }


</style>
<title>Insert title here</title>

</head>
<body  background=".\jd\37.jpg">
<form action="<%=basePath %>UploadServlet" method="post" enctype="multipart/form-data" >
<center>
<table width="200px" hegith="300px" border="1">
<tr>
	<td align="center"> 头像上传：<input type="file" name="touxiang"/></td>
	<td align="center" >
	<input type="submit" value="上传"/></td>
	</tr>
	</table>
	</center>
	</form>
</body>
</html>