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
	$(function() {

		$("#addFenlei").bootstrapValidator({

			feedbackIcons : {

				valid : "glyphicon glyphicon-ok",

				invalid : "glyphicon glyphicon-remove",

				validating : "glyphicon glyphicon-refresh"

			},

			fields : {

				fenleiname : {

					validators : {

						notEmpty : {

							message : '分类名称不能为空'
						},
						regexp : {

							regexp : /^[\u0391-\uFFE5]{2,10}$/,
							message : '分类名称必须由2-12个汉字组成'
						},

						remote : {

							message : '分类名称存在，不可以添加',
							url : 'FenleiServlet',
							type : 'post',
							data : {

								fenleiname : $('input[name=fenleiname]').val(),
								action : 'validateFenleiName'

							},
							delay : 500

						}

					}
				}
			}
		});

	});
</script>
<title>分类</title>
</head>
<body background=".\jd\37.jpg">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<form id="addFenlei" action="FenleiServlet?action=addFenlei"
					method="post">

					<h3 class="text-center text-warning">
						<font size="6">分类添加</font>
					</h3>
					<div class="form-group">
						<label class="text-primary">分类名称:</label> <input type="text"
							name="fenleiname" class="form-control"
							placeholder="分类名必须是2-10位汉字" />
					</div>
					</div>
					</div>
					<div class="row">
					<div class="col-md-4 col-md-offset-4">
						
							
								<button type="submit"
									class="btn btn-block btn-success btn-default">添加</button>
							</div>
							<br>
							<br>
							<div class="col-md-4 col-md-offset-4">
								<button type="reset"
									class="btn  btn-block  btn-warning btn-default">重写</button>
							</div>
						
					</div>





				</form>
			</div>
		

</body>
</html>