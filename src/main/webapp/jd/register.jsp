<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script type="text/javascript">
<% 

            String m=(String)session.getAttribute("name");
             if(m!=null){
     %>
         alert("<%=m%>");
         
         <%
         session.removeAttribute("name");
         }
         %> 
         
  </script>
<title>Insert title here</title>
</head>
<body background="./mm/31.jpg">
<!-- 
    form action="AdminServlet?action=register"
 -->
   <form action="AdminServlet?action=register" method="post">
   <center>
   <table  cellspacing="1" align="center" border="1px" height="350px" bordercolor="pink">
   
   <caption align="top"> <font size="5"color="purple"><b>会员注册</b></font></caption>
      <br/><br/>
       <br/><br/>   <br/><br/>
       <br/><br/>
       
      <tr><td>姓名:</td><td><input type="text" name="name"/></td></tr>
         
       <tr><td>手机:</td><td><input type="text" name="phone"/></td></tr>
       <tr> <td>用户名:</td><td><input type="text" name="userName"/></td><tr>
        
        <tr><td>密码: </td><td><input type="password" name="password"/></td></tr>
        
        <tr><td colspan="2" align="center"><input type="submit" value="注册"/></td></tr>
        </table>
       
        <p>是管理员，请点击<a href="test.html">登录</a></p>
         </center>
   </form>
</body>
</html>