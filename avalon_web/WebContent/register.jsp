<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>註冊界面--avalon</title>
		<link rel="shortcut icon" href="img/logo-white.ico" />
	</head>
	<body oncontextmenu="return false" onselectstart="return false" ondragstart="return false" οncοpy="return false">
		
		<style type="text/css">
			@font-face {
				font-family: 'jetbrains mid';
				src: '\fonts\JetBrainsMono-Medium.ttf'format('truetype');
			}

			* {
				padding: 0;
				margin: 0;
			}

			html {
				height: 100%;
			}

			body {
				height: 100%;
				font-family: 'jetbrains mid';
				display: flex;
				align-items: center;
				justify-content: center;
				background-color: #191919;
			}

			.container {
				width: 300px;
				background-color: #262626;
				color: #fff;
				border: 2px;
				padding: 50px;
				border-radius: 20px;
			}

			.container .panel-heading {
				text-align: center;
				font-size: 35px;
				text-transform: uppercase;
				line-height: 100px;
			}

			.container .panel-body input {
				background-color: #262626;
				border: 0;
				width: 100%;
				text-align: center;
				font-size: 15px;
				color: #fff;
				outline: none;
			}

			.container .panel-body input::placeholder {
				text-transform: uppercase;
			}

			.container .panel-body .form-group {
				background-image: linear-gradient(to right, #e8dee2, #e5e8f1);
				/* linear-gradient(to right,#e8198b,#0eb4dd) */
				width: 100%;
				height: 50px;
				margin-bottom: 20px;
				border-radius: 30px;
				display: flex;
				align-items: center;
				justify-content: center;
			}

			.container .panel-body .form-group .form-control {

				height: calc(100% - 4px);
				width: calc(100% - 4px);
				border-radius: 30px;
			}

			.container .panel-body .btn {
				width: 60%;
				text-transform: uppercase;
				border: 2px solid #0e92b3;
				text-align: center;
				line-height: 30px;
				cursor: pointer;
				background-color: #262626;
				color: #EFEEEE;

				margin: 0 auto;
				margin-top: 50px;
				display: flex;
				justify-content: center;
			}

			.container .panel-body .btn:hover {
				background-color: #0e92b3;
			}
		</style>


		<div class="container">
			<div class="panel-heading">
				<span class="glyphicon glyphicon-plus">regist</span>
			</div>
			<div class="panel-body">
				<form action="check_reg.jsp" method="POST" name="registerForm">
					<div class="form-group">
						<input type="text" class="form-control" name="username" placeholder="请输入用户名" autofocus="autofocus">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" name="password" placeholder="请输入密码">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" name="repwd" placeholder="请重复密码">
					</div>
					<button type="submit" class="btn btn-primary" onclick="return checkForm()">regist</button>
				</form>
			</div>
		</div>

		<script type="text/javascript">
			function checkForm() {
				var name = registerForm.username.value;
				var pwd = registerForm.password.value;
				var repwd = registerForm.repwd.value;
				//alert(name + pwd + repwd);
				if (username == "" || username == null) {
					alert("请输入用户名");
					registerForm.username.focus();
					return false;
				} else if (pwd == "" || pwd == null) {
					alert("请输入密码");
					registerForm.password.focus();
					return false;
				} else if (repwd == "" || repwd == null) {
					alert("请输入重复密码");
					registerForm.repwd.focus();
					return false;
				} else if (password != repwd) {
					alert("两次密码输入不一致，请重新输入!");
					registerForm.repwd.focus();
					return false;
				}
				alert('注册成功！');
				return true;
			}
		</script>
	</body>
</html>
