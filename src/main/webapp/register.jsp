<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>

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
<head>
<link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>注册</title>
<script type="text/javascript" src="js/ajax.js"></script>
<script>

$(function() {

	$("#login").bootstrapValidator({
		feedbackIcons : {

			valid : "glyphicon glyphicon-ok",
			invalid : "glyphicon glyphicon-remove",
			validating : "glyphicon glyphicon-refresh"
		},fields : {

			uname : {
				validators : {

					notEmpty : {

						message : '用户名不能为空！*-*'
					},
					regexp : {
						regexp : /^[A-z0-9_]{6,12}$/,

						message : '用户名必须二十六个字符数字下划线组成'
					}
				/*stringLength:{
				 min:5,
				 max:13,
				 message:'用户名必须5-13个字符'
				}*/
				}
			},
			pass : {

				validators : {

					notEmpty : {
						message : '密码不能为空！*-*'
					},
					different : {

						field : 'uname',
						message : '密码不能和用户名一样！'
					}
				}
			},
			repass : {

				validators : {

					notEmpty : {
						message : '密码不能为空！*-*'
					},
					identical : {

						field : 'pass',
						message : '两次密码不一样'
					}

				}
			},
			phone : {
				validators : {

					notEmpty : {
						message : '手机号码不能为空！*-*'
					},
					regexp : {
						regexp : /^1[3-9][0-9]{9}$/,

						message : '手机号码必须11个字符数字组成'
					}

				}

			},
			sex : {
				validators : {

					notEmpty : {
						message : '不能为空！*-*'
					}

				}

			},
			birthday: {
				validators : {

					notEmpty : {
						message : '不能为空！*-*'
					}

				}

			}
		});
	});
	function validateName() {

		var name = document.register.name;

		nameReg = /^[\u0391-\uFFE5]{2,10}$/;

		var flag = nameReg.test(name.value);

		var nameMsg = document.getElementById("nameMsg");

		if (flag) {

			nameMsg.style.color = "green";

			nameMsg.innerHTML = "姓名合法";

			return true;
		} else {

			nameMsg.style.color = "red";

			nameMsg.innerHTML = "姓名不合法，姓名必须2-10个汉字";

			return false;

		}
	}
	function validatephone() {

		var phone = document.register.phone;

		var Reg = /^1[3-9][0-9]{9}$/; //必须是数字字母下划线3-15

		var phoneMsg = document.getElementById("phoneMsg");

		if (Reg.test(phone.value)) {

			phoneMsg.style.color = "green";

			phoneMsg.innerHTML = "手机号码合法";

			return true;
		} else {

			phoneMsg.style.color = "red";

			phoneMsg.innerHTML = "手机号码不合法，手机号码必须必须是数字11位";
			return false;

		}

	}

	function validateuserName() {//用户名验证1
		//1.格式必须是数字字母下划线3-15
		var flag = true;
		var userName = document.register.userName;

		//var reg=/^[A-z0-9_]{3,15}$/; //必须是数字字母下划线3-15
		var reg = /^[a-zA-Z0-9_-]{3,16}$/
		var userNameMsg = document.getElementById("userNameMsg");

		if (reg.test(userNameMsg.value)) {

			userNameMsg.style.color = "green";

			userNameMsg.innerHTML = "用户名合法";

			//2.服务器验证    ·1用户名没有注册，提示先注册  ·2用户名存在，不可以注册"

			var xmlhttp = getXMLHttpRequest();

			xmlhttp.open("POST", "AdminServlet", true);

			xmlhttp.setRequestHeader("Content-type",
					"application/x-www-form-urlencoded");

			xmlhttp.send("action=validateUserName&userName=" + userName.value);

			xmlhttp.onreadystatechange = function() {

				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {

					var content = xmlhttp.responseText;

					//  alert(content);

					var span = document.getElementById("userNameMsg");

					if (content == "0") {//用户名没有注册，提示先注册

						span.style.color = "green";

						span.innerHTML = "你输入的不存在，可以注册";

						span.focus();

						flag = true;

					} else {//用户名存在，可以登录

						span.style.color = "red";

						span.innerHTML = "用户名存在，不可以注册";

						flag = false;
					}

				}
				return flag;
			}

			return true;
		} else {

			userNameMsg.style.color = "red";

			userNameMsg.innerHTML = "用户名不合法，用户名必须是数字.字母.下划线长度是3-15";

			return false;

		}

	}

	function validatePassword() {

		var password = document.register.password

		var Reg = /^(\w|\W){6,15}$/; //必须是数字字母下划线3-15

		var passwordMsg = document.getElementById("passwordMsg");

		if (Reg.test(password.value)) {

			passwordMsg.style.color = "green";

			passwordMsg.innerHTML = "密码合法";

			return true;

		} else {

			passwordMsg.style.color = "red";

			passwordMsg.innerHTML = "密码不合法，密码必须必须是数字字母下划线6-15位";

			return false;

		}
	}
	function validateRepassword() {

		var password = document.register.password;

		var repassword = document.register.repassword;

		// var Reg=/^(\w|\W){6,15}$/; //必须是数字字母下划线3-15

		var repasswordMsg = document.getElementById("repasswordMsg");

		if (repassword.value == password.value) {

			repasswordMsg.style.color = "green";

			repasswordMsg.innerHTML = "密码一样，合法";

			return true;
		} else {

			repasswordMsg.style.color = "red";

			repasswordMsg.innerHTML = "密码不一致，密码必须是数字字母下划线组成6-15位";

			return false;

		}

	} //6.校验头像
	flag6 = true;
	function validateTouxiang() {

		var touxiang = document.register.touxiang;

		var flag = false; //状态

		var arr = [ "jpg", "png", "gif" ];

		var index = touxiang.value.lastIndexOf(".");

		var ext = touxiang.value.substr(index + 1);
		//循环比较
		for (var i = 0; i < arr.length; i++) {

			if (ext == arr[i]) {

				flag = true; //一旦找到合适的，立即退出循环

				break;
			}
		}
		//条件判断
		
		if (flag) {

			touxiangMsg.style.color = "green";

			touxiangMsg.innerHTML = "头像格式合法";

			flage6 = true;

		} else {

			touxiangMsg.style.color = "red";

			touxiangMsg.innerHTML = "头像格式不合法";

			flage6 = false;
		}
	}

	function JiaoYan() {

		return validateName() && validatephone() && validateuserName()
				&& validatePassword() && validateRepassword() &&validateTouxiang() ;

	}
</script>
</head>
<body background="./jd/31.jpg">
<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
	<form action="AdminServlet?action=register" method="post"
		name="register" enctype="multipart/form-data"
		onsubmit="return JiaoYan()">
		<center>
			<table border="1" width="100%" height="1000px" cellspacing="0"
				bordercolor="white">
				<tr height="80px">
					<td colspan="2"><font size="7" color="red"><b>Baidu</b></font><font
						size="6" color="black"><b>图书系统</b></font> <font color="gray"><b>|</b></font><font
						size="6" color="silver"><b>注册</b></font></td>
				</tr>

				<tr>
					<td align="center">
						<table frame="box" width="600px" height="400px"
							bordercolor="white">
							<tr align="center">
								<td align="center" colspan="3"><font size="6" color="pink">会员注册</font></td>
							</tr>

							<tr align="center">
								<td align="center"><font size="5" color="black">注册姓名：</font></td>

								<td><input type="text" name="name" onblur="validateName()" />
								</td>
								<td><span id="nameMsg"></span></td>
							</tr>

							<tr align="center">
								<td align="center"><font size="5" color="black">注册号码：</font></td>

								<td><input type="text" name="phone"
									onblur="validatephone()" /></td>
								<td><span id="phoneMsg"></span></td>

							</tr>
							<tr align="center">
								<td align="center"><font size="5" color="black">注册账号：</font></td>

								<td><input type="text" name="userName"
									onblur="validateuserName()" /></td>
								<td><span id="userNameMsg"></span></td>

							</tr>
							<tr align="center">
								<td align="center"><font size="5" color="black">设置密码</font></td>

								<td><input type="password" name="password"
									onblur="validatePassword()" /></td>
								<td><span id="passwordMsg"></span></td>

							</tr>

							<tr align="center">
								<td align="center"><font size="5" color="black">确认密码</font></td>

								<td><input type="password" name="repassword"
									onblur="validateRepassword()" /></td>
								<td><span id="repasswordMsg"></span></td>

							</tr>
							<tr>
								<td align="center" width="500px"><font color="black"><b>头&nbsp;&nbsp;&nbsp;&nbsp;像:</b></font>
								</td>
								<td><input type="file" name="touxiang"
									onblur="validateTouxiang()" /></td>
								<td width="400px"><span id="touxiangMsg"></span></td>
							</tr>

							<tr align="center">
								<td colspan="2"><a href="login2.jsp"><input
										type="submit" value="注册!" /></a></td>
							</tr>
						</table>
						<p>
							是管理员，请点击<a href="login2.jsp">登录</a>
						</p>
					</td>
				</tr>

				<tr height="100px">
					<td align="center" colspan="2"><font align="center"
						colspan="2">Baidu公司版权所有 &copy; 2012-2018</font></td>

				</tr>
			</table>


		</center>
	</form>
</body>
</html>