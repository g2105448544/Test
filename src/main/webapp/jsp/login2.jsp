<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>17商城</title>
<link type="text/css" href="../css/css.css" rel="stylesheet" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/js.js"></script>
<script type="text/javascript">
function ss1(){
	var param="../dict/vipLogin.do"
	$.ajax({
		url:param,
		type:"POST",
		data:"username="+$("#username").val()+"&userpass="+$("#userpass").val()+"",
		dateType:"text",
		success:function(data){
			alert(data)
			if(data == "maiIndex"){
				window.location.href="/st-web/Users/address2.do";
			}
		}
	})
	}
</script>
</head>

<body style="background: #FFF;">
	<div class="loginLogo">
		<div class="logoMid">
			<h1 class="logo" style="height: 71px; padding-top: 10px;">
				<a href="/st-web/jsp/index.jsp"><img
					src="../images/loginLogo.jpg" width="241" height="71" /></a>
			</h1>
			<div class="loginReg">
				还没有会员账号?&nbsp;<a href="/st-web/jsp/reg.jsp">免费注册</a>
			</div>
			<!--loginReg/-->
		</div>
		<!--logoMid/-->
	</div>
	<!--loginLogo/-->
	<div class="loginBox">
		<div class="loginLeft">
			<img src="../images/logoinimg.jpg" width="716" height="376" />
		</div>
		<!--loginLeft/-->
		<div class="loginRight">
			<div class="rdLeft1">
				<ul class="rdList">
					<li><a href="../jsp/login.jsp"><h2>会员登录</h2></a></li>
					<li><h2>商家登录</h2></li>
					<div class="clears"></div>
				</ul>
				<!--rdList/-->
				<div class="rdProBox">
					<input type="hidden" name="id" />
					<h3>用户名</h3>
					<input type="text" class="name" id="username"placeholder="请输入用户名"/>
					<h3>密码</h3>
					<input type="password" class="pwd" id="userpass" placeholder="请输入密码"/>
					<!--zhuangtai/-->
					<div class="subs">
						<input type="image" src="../images/sub.jpg" class="submit" onclick="ss1()"/>
					</div>
		
		<!--loginRight/-->
		<div class="clears"></div>
	</div>
	<!--loginBox/-->
</body>
</html>
