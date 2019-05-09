<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<!-- 2.移动设备优先 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 3.导入核心的css文件 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
<link rel="stylesheet" href="icon/iconfont.css"/>
<!-- 4.需要引入JQuery文件 -->
<script type="text/javascript" src="bootstrap/js/jquery.js"></script>
<!-- 5.引入BootStrap的核心JS文件 -->
<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="icon/iconfont.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link type="text/css" rel="stylesheet" href="jquery-ui.css"/>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<title>Insert title here</title>
<style>
.btn-success{

color:fuchsia;

background-color:lightyellow;

}
.btn-info{

color:blue;

background-color:yellow;

}
.btn-danger{

color:blue;

background-color:orange;

}
 li{
    	
       list-style-type:none;
       
       padding-top:5px;
       
       background-color:white;
      
    }
    
    a{ 
    
    
      text-decoration: none;
    }
    h2{
    margin-left:100px;
    color:maroon; ;
    }
    
  #accordion{
  
    width:250px;
   
  }
</style>

<script type="text/javascript">
    $(function(){
    	
    	$("#accordion").accordion();
    	
    	$("#date").datepicker();
    	
    	$("#delete").button({
    		icon: "ui-icon-trash",
    		showLabel: true
    	});
    	
    });
    
   
</script>
</head>
<body bgcolor="lightyellow">
    <!-- Accordion -->
<h2 class="demoHeaders">菜单</h2>
<div id="accordion" >
	<h3 >分类管理</h3>
	<div>

	    <li ><a href="addFenlei2.jsp" target="right"><span style="color:maroon" class="glyphicon glyphicon-pencil btn btn-success">添加分类</span></a></li>
	    <li><a href="FenleiServlet?action=showFenleiByPage" target="right"><span class="glyphicon glyphicon-eye-open btn btn-success" style="color:maroon">查看所有分类</span></a></li>
	    <li><a href="updateFenlei.jsp" target="right"><span class="glyphicon glyphicon-modal-window btn btn-success" style="color:maroon">修改分类</span></a></li>
	
	</div>
	<h3>图书管理</h3>
	<div>
	<li><a href="addBook2.jsp" target="right"><span class="glyphicon glyphicon-pencil btn btn-success" style="color:maroon">添加图书</span></a></li>
    <li><a href="BookServlet?action=showBookByPage" target="right"><span class="iconfont icon-sousuo btn btn-success" style="color:maroon">查看所有图书</span></a></li>
	<!--  <li><a href="xiugaiBook.jsp" target="right"><span style="color:maroon" class="glyphicon glyphicon-scissors"></span><input type="button" class="text-success" value="修改图书"/></a></li>
	-->
	</div>
	
	<h3>用户管理</h3>
	<div>
	<li><a href="addUser2.jsp" target="right"><span class="glyphicon glyphicon-pencil btn btn-success" style="color:maroon">添加用户</span></a></li>
    <li><a href="UserServlet?action=showUserByPage" target="right"><span  style="color:maroon" class="glyphicon glyphicon-eye-open btn btn-success">查看用户</span></a></li>
	<!--<li><a href="xiugaiUser.jsp" target="right"><span class="iconfont icon-wode" style="color:maroon"></span><input type="button" value="修改用户"></a></li>
	-->
	</div>
	
	<h3 >管理员信息管理</h3>
	<div>
	<li><a href="showAddmin.jsp" target="right"><span class="glyphicon glyphicon-pencil btn btn-success" style="color:maroon">查看管理员信息</span></a></li>
    <li><a href="updatepassword.jsp" target="right"><span class="glyphicon glyphicon-king btn btn-success" style="color:maroon">修改密码</span></a></li>
	<li><a href="AdminServlet?action=exit" target="_parent"><span  class="iconfont icon-fasong btn btn-danger" class="glyphicon glyphicon-copy" style="color:maroon" >退出系统</span></a></li>
	
	</div>
</div>
	
	
</body>
</html>