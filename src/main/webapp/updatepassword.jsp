<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" />
<script type="text/javascript" src="icon/iconfont.js"></script>

<title>Insert title here</title>


<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript">
	$(function() {

		$("#xiugaipassword").bootstrapValidator({

			feedbackIcons : {

				valid : "glyphicon glyphicon-ok",

				invalid : "glyphicon glyphicon-remove",

				validating : "glyphicon glyphicon-refresh"

			},

			fields : {

				password : {

					validators : {

						notEmpty : {

							message : '密码不能为为空'
						},
						remote : {

							message : '密码错误，请重新输入',
							url : 'AdminServlet',
							type : 'post',
							data : {

								password : $('input[name=password]').val(),
								action : 'validateAdminpassword2'

							},
							delay : 500

						}

					}
				},
				newpassword : {

					validators : {

						notEmpty : {

							message : '新密码不能为空'
						},
						different : {

							field : 'password',
							message : '两次密码不可以一样'
						},
						regexp : {
							regexp : /^(\w|\W){6,15}$/, //必须是数字字母下划线3-15

							message : '密码必须必须是数字字母下划线6-15'
						}

					}
				},
				renewpassword : {
					validators : {

						notEmpty : {

							message : '确认新密码不能为空'
						},
						identical : {

							field : 'newpassword',
							message : '两次密码不一致'
						}

					}

				}

			}

		});

	});
</script>
</head>
<body background=".\jd\37.jpg">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">

				<form action="AdminServlet" id="xiugaipassword" method="post">
					<h3 class="text-center text-warning">
						<font size="6">修改密码</font>
					</h3>
					<input type="hidden" name="action" value="xiugaiPassword">


					<div class="form-group">
						<label class="text-primary">原密码:</label> <input type="password"
							name="password" class="form-control"
							placeholder="是由数字字母下划线3-15组成">
					</div>

					<div class="form-group">
						<label class="text-primary">新密码:</label> <input type="password"
							name="newpassword" class="form-control" placeholder="不能和原密码一样">
					</div>

					<div class="form-group">
						<label class="text-primary">确认新密码:</label> <input type="password"
							name="renewpassword" class="form-control"
							placeholder="是由数字字母下划线3-15组成">
					</div>


					<div class="form-group">
						<button type="submit"
							class="btn btn-success  btn-block glyphicon glyphicon-modal-window "
							style="size: 50px; color: maroon">
							<font color="black">保存修改</font>
						</button>
						<br>
						<button type="reset"
							class="btn btn-warning  btn-block iconfont icon-fasong btn btn-danger "
							style="size: 70px; color: navy">
							<font color="black">重写</font>
						</button>
						<br>
						<a href="showAddmin.jsp" class="btn btn-info btn-block">Go Back</a>
					</div>

				</form>
			</div>
		</div>
	</div>
</body>
</html>