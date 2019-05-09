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
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>图书</title>

<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript">
	$(function() {
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


		$("#addBook").bootstrapValidator({

							feedbackIcons : {

								valid : "glyphicon glyphicon-ok",

								invalid : "glyphicon glyphicon-remove",

								validating : "glyphicon glyphicon-refresh"

							},

							fields : {

								bookname : {

									validators : {

										notEmpty : {

											message : '图书名称不能为空！'

										},

										regexp : {

											regexp : /^[\u0391-\uFFE5]{1,15}$/,
											message : '姓名必须是1-10位汉字'
										},

										remote : {

											message : '图书名已存在，请重新输入',
											url : 'BookServlet',
											type : 'post',
											data : {

												bookname : $('input[name=bookname]')
														.val(),
												action : 'validateBookName'

											},
											delay : 500

										}
									}
									},

									price : {

										validators : {

											notEmpty : {

												message : '价格不能为空'
											},
											regexp : {

												regexp : /(?!^0*(\.0{1,2})?$)^\d{1,13}(\.\d{1,2})?$/,
												message : '价格必由1-13个数字组成'
											}

										}
									},

									publisher : {
										validators : {

											notEmpty : {
												message : '图书出版社名不能为空！*-*'
											},
											regexp : {
												regexp : /^[\u0391-\uFFE5]{1,}$/,

												message : '图书出版社名必须1-10个汉字'
											}

										}

									},
									status : {

										validators : {

											notEmpty : {

												message : '图书状态不能为为空'
											},
											regexp : {
												regexp : /^[\u0391-\uFFE5]{1,}$/, //必须是数字字母下划线3-15

												message : '图书状态由借出、未借出组成'
											}

										}
									},
									fenleiname : {

										validators : {

											notEmpty : {

												message : '选择不能为空'
											}

											
										}

									},
									borrow : {

										validators : {

											notEmpty : {

												message : '姓名不能为空'
											},

											regexp : {

												regexp : /^[\u0391-\uFFE5]{2,10}$/,
												message : '姓名必须是2-10位汉字'
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
				<form action="BookServlet?action=addBook" method="post" id="addBook">
					<h3 class="text-center text-warning">
						<font size="7">添加图书</font>
					</h3>
					
				
					<div class="form-group">
						<label class="text-primary">请选择分类:</label> 
				      <select name="fenleiname" id="fenleiList"
								style="color: #265C88; font-size: 4px;" class="form-control input-sm">
								<option>----请选择----</option>
							</select>
					</div>
					<div class="form-group">
						<label class="text-primary">图书名称:</label> <input type="text"
							name="bookname" class="form-control" placeholder="图书名称必须是1-10位汉字" />
					</div>
					<div class="form-group">
						<label class="text-primary">图书价格:</label> <input type="text"
							name="price" class="form-control" placeholder="图书价格须是1-多个位数字组成" />
					</div>
					<div class="form-group">
						<label class="text-primary">出版社:</label> <input type="text"
							name="publisher" class="form-control" placeholder="须由1-12个中文组成" />
					</div>
					<div class="form-group">
						<label class="text-primary">状态:</label> <input type="text"
							name="status" class="form-control" placeholder="借出/未借出">
					</div>
					<div class="form-group">
						<label class="text-primary">借书人:</label> <input type="text"
							name="borrow" class="form-control " placeholder="2-10个汉字组成">
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-success btn-block">添加图书</button>
						<button type="reset" class="btn btn-warning btn-block">重写</button>
						<br>
					
					</div>
					</form>
			</div>
			
		</div>
		
	</div>


</body>
</html>