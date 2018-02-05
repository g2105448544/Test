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
function ss(){
	document.getElementById("authImg").src ="/st-web/AuthCodeServlet?"+Math.random();
		
}
</script>
</head>

<body style=" background:#FFF;">
 <div class="loginLogo">
  <div class="logoMid">
   <h1 class="logo" style="height:71px;padding-top:10px;"><a href="/st-web/jsp/index.jsp"><img src="../images/loginLogo.jpg" width="241" height="71" /></a></h1>
   <div class="loginReg">
    还没有会员账号?&nbsp;<a href="/st-web/jsp/login.jsp">登录</a>
   </div><!--loginReg/-->
  </div><!--logoMid/-->
 </div><!--loginLogo/-->
 <div class="loginBox">
  <img src="../images/chengnuo.jpg" width="295" height="393" class="chengnuo" />
  <form action="/st-web/dict/addUser.do" method="post" class="reg">
   <div class="regList">
    <label><span class="red">*</span> 账户名</label>
    <input type="text" name = "username" placeholder="请输入账户名"/> <span style="color:#999;">请输入邮箱/用户名/手机号</span>
   </div><!--regList/-->
   <div class="regList">
    <label><span class="red">*</span> 请设置密码</label>
    <input type="password" name = "userpass"  placeholder="请输入密码"/>
   </div><!--regList/-->
   <div class="regList">
    <label><span class="password">*</span> 用户名</label>
    <input type="text" name = "name" placeholder="请输入用户名"/>
   </div><!--regList/-->
   <div class="regList">
    <label><span class="red">*</span> 验证码</label>
    <input type="text" class="yanzheng" name="inputCode" placeholder="请输入验证码">
    <img src="/st-web/AuthCodeServlet" id="authImg" onclick="ss()"><br>
   </div><!--regList/-->
   <div class="xieyi">
    <input type="checkbox" /> 我已经阅读并同意<a href="#">《17用户注册协议》</a>
   </div><!--xieyi/-->
   <div class="reg">
    <input type="image" src="../images/reg.jpg" width="284" height="34" />
   </div><!--reg/-->
  </form><!--reg/-->
  <div class="clears"></div>
 </div><!--loginBox/-->
</body>
</html>
