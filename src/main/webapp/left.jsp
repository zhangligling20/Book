<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
		#changeConsume{
			display: none;
			}
			
			#books{
			display:none;
			}
		#changeUser{
		
		display:none;
		}
		
		#guanliy{
		display:none;
		
		}
			
		
 li{
    	
       list-style-type:none;
       
       padding-top:5px;
       
      
    }
    
    a{ 
    
    
      text-decoration: none;
    }
    
  #accordion{
  
    width:250px;
   
  }
		</style>
<script type="text/javascript">

             window.onload=function(){
	
	var consume=document.getElementById("consume");
	
	consume.onclick=function(){
		
		var changeConsume=document.getElementById("changeConsume");
		
		if(changeConsume.style.display=="block"){
			
			consume.innerHTML="+分类管理";
			
			
			changeConsume.style.display="none";
			
			
		}else{
			
			consume.innerHTML="-分类管理";
			
			changeConsume.style.display="block";
			
		}
		
	};
	var book=document.getElementById("book");
	
	book.onclick=function(){
		
		var books=document.getElementById("books");
		
		if(books.style.display=="block"){
			
			book.innerHTML="+图书管理";
			books.style.display="none";
		
		}else{
			
			book.innerHTML="-图书管理";
				books.style.display="block";
			
		}
	};

	var user=document.getElementById("user");
	
	user.onclick=function(){
		
		var changeUser=document.getElementById("changeUser");
		
		if(changeUser.style.display=="block"){
			
			user.innerHTML="+用户管理";
			changeUser.style.display="none";
		
		}else{
			
			user.innerHTML="-用户管理";
			changeUser.style.display="block";
			
		}
	};
        var admin=document.getElementById("admin");
	
	admin.onclick=function(){
		
		var guanliy=document.getElementById("guanliy");
		
		if(guanliy.style.display=="block"){
			
			admin.innerHTML="+管理员信息管理";
			
			guanliy.style.display="none";
		
		}else{
			
		admin.innerHTML="-管理员信息管理";
		
		guanliy.style.display="block";
			
		}
	};
	
    
}; 

</script>
</head>
<body bgcolor="skyblue">
  <table align="center"height="450px" width="200px"cellspacing="1" border="1">
  
	<tr height="120px">
	<td>
	<p id="consume">+分类管理</p>
	<div id="changeConsume">
	
	<table align="center"height="80px" width="40px" cellspacing="0">
	
	
	<tr align="center"><td><a href="addFenlei.jsp" target="right"><span class="ui-icon ui-icon-plusthick"></span><input type="button" value="添加分类"/></a></td></tr>
	
	<tr align="center" ><td><a href="FenleiServlet?action=showFenleiByPage" target="right"><span class="ui-icon ui-icon-folder-open"></span><input type="button" value="查看所有分类"/></a></td></tr>
	<tr align="center" ><td><a href="updateFenlei.jsp" target="right"><span class="ui-icon ui-icon-comment"></span><input type="button" value="修改分类"></a></td></tr>
	
	</table>
</div>
	</td></tr>   

	<tr><td>
	<p id="book">+图书管理</p>
	<div id="books">
	<table align="center"height="80px" width="40px" cellspacing="0">
	<tr align="center"><td><a href="addBook.jsp" target="right"><input type="button" value="添加图书"/></a></td></tr>
	<tr align="center"><td><a href="BookServlet?action=showBookByPage" target="right"><input type="button" value="查看所有图书"/></a></td></tr>
	<tr align="center" ><td><a href="xiugaiBook.jsp" target="right"><input type="button" value="修改图书"/></a></td></tr>
	</table>
	</div>
	</td></tr>
	
	
	<tr><td>
	<p id="user">+用户管理</p>
	<div id="changeUser">
	
	<table align="center"height="80px" width="40px" cellspacing="0">
	<tr align="center"><td><a href="addUser.jsp" target="right"><input type="button" value="添加用户"></a></td></tr>
	
	<tr align="center" ><td><a href="UserServlet?action=showUserByPage" target="right"><input type="button" value="查看用户"></a></td></tr>
	<tr align="center" ><td><a href="xiugaiUser.jsp" target="right"><input type="button" value="修改用户"></a></td></tr>
	</table>
	</div>
	</td></tr>

  <tr><td>
	<p id="admin" >+管理员信息管理</p>
   <div id="guanliy">
	<table align="center" height="80px" width="40px" cellspacing="0" >
	<tr align="center"><td><a href="showAddmin.jsp" target="right"><input type="button" value="查看管理员信息"></a></td></tr>
	<tr align="center" ><td><a href="xiugaiAddminpassword.jsp" target="right"><input type="button" value="修改密码"></a></td></tr>
	<tr align="center" ><td><a href="AdminServlet?action=exit" target="_parent"><input type="button" value="退出系统"></a></td></tr>
	</table>
	</div>
	</td>
	</tr>
	
  </table>  
</body>
</html>