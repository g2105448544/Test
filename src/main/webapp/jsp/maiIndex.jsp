<%@page import="st.system.model.UserModel"%>
<%@page import="st.core.session.SessionUtils"%>
<%@page import="st.system.model.UsersModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>17商城</title>
<link type="text/css" href="../css/css.css" rel="stylesheet" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/js.js"></script>
<script src="../js/wb.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(function() {
		$("#kinMaxShow").kinMaxShow();
		var param = "/st-web/dict/getUser12.do";
		$.ajax({
			url : param,
			type : "POST",
			dateType : "text",
			success : function(data) {
				if (data == null || data == "") {
					return;
				}
				$("#aaaa").html(
						data + "欢迎来到17商城<a href ='../dict/logout2.do?key="
								+ data + "'>[注销]</a>")
			}
		})
		var param = "/st-web/dict/vipuserName2.do";
		$.ajax({
			url : param,
			type : "POST",
			dateType : "text",
			success : function(data) {
				if (data == null || data == "") {
					return;
				}
				$("#bbbb").html(data)
			}
		})
	});

</script>
</head>
<body>
	<div class="mianCont">
		<div class="top">
			<span id="aaaa">您好！欢迎来到17商城 请&nbsp;<a
				href="/st-web/jsp/login.jsp">[登录]</a>&nbsp;<a
				href="/st-web/jsp/reg.jsp">[注册]</a></span> <span class="topRight"> <a
				href="/st-web/jsp/vip.jsp">我的17</a>&nbsp;| <a
				href="/st-web/jsp/order.jsp">我的订单</a>&nbsp;| <a
				href="/st-web/jsp/login.jsp">会员中心</a>&nbsp;| <a
				href="/st-web/jsp/contact.jsp">联系我们</a>

			</span>
		</div>
		<!--top/-->
		<div class="lsg">
			<h1 class="logo">
				<a href="/st-web/jsp/index.jsp"><img src="../images/logo.png"
					width="217" height="90" /></a>
			</h1>
			<form action="#" method="get" class="subBox">
				<div class="subBoxDiv">
					<input type="text" class="subLeft" /> <input type="image"
						src="../images/subimg.png" width="63" height="34" class="sub" />

				</div>
				<!--subBoxDiv/-->
			</form>


			<!--lsg/-->
			<div class="pnt">

				<!--pntLeft/-->
				<div class="pntRight">
					<ul class="nav">
						<li><a href="../jsp/index.jsp">商城首页</a></li>
						<li><a href="/st-web/jsp/product.jsp">促销中心</a></li>
						<li><a href="/st-web/jsp/login.jsp">会员中心</a></li>
						<li><a href="/st-web/jsp/help.jsp">帮助中心</a></li>
						<div class="clears"></div>
						<div class="phone">TEL：021-12345678</div>
					</ul>
					<!--nav/-->
				</div>
				<!--pntRight/-->
				<div class="clears"></div>
			</div>
			<div class="cont">
				<div class="contLeft" id="contLeft">
					<h3 class="leftTitle">
						<a href="../jsp/maiIndex.jsp">卖家中心</a>
					</h3>
					<dl class="helpNav vipNav">
						<dt>商品发布</dt>
						<dd>
							<a href="../Maijia/xsFenlei.do?user_id=${model12.username}">查看分类</a> 
							<a href="../Maijia/xsShangpin.do?user_id=${model12.username}" >发布商品</a>
						</dd>
					</dl>
					<!--helpNav/-->
				</div>
				<!--contLeft/-->
				<div class="contRight">
			
					<table class="vipMy">
						<tr>
							<th>用户名</th>
							<th>邮编</th>
							<th>真实姓名</th>
							<th>联系方式</th>
							<th>证件号码</th>
							<th>地址</th>
						</tr>
						<%
							List<UsersModel> model = (List<UsersModel>) SessionUtils.getAttr(request, "usermodel");
						%>
						<% for (int i = 0; i < model.size(); i++){ 
							UsersModel user = model.get(i);
						%>
						<tr>
							<td><%=user.getUsername() %></td>
							<td><%=user.getYoubian() %></td>
							<td><%= user.getName() %></td>
							<td><%= user.getLianxi() %></td>
							<td><%= user.getShenfen() %></td>
							<td><%= user.getAddress() %></td>
						</tr>
						<% }%>
					</table>

					<!--vipMy/-->
					<form action="../Users/updateAddress.do?username=${model2.username} "
						method="post">
						<div class="address">
							<% List<UsersModel> list = (List<UsersModel>)SessionUtils.getAttr(request, "usermodel"); %>
							<% for(int i = 0; i < list.size(); i++){
								UsersModel users = list.get(i);
							 %>
							
							<div class="addList"></div>
							<!--addList-->
							<div class="addList">
								<label><span class="red">* </span>邮编:</label> <input type="text"
									name="youbian" value="<%=users.getYoubian() %>" />
							</div>
							<!--addList-->
							<div class="addList">
								<label><span class="red">* </span>姓名:</label> <input type="text"
									name="name" value="<%=users.getName() %>" />
							</div>
							<!--addList-->
							<div class="addList">
								<label><span class="red">* </span>联系方式:</label> <input
									type="text" name="lianxi" value="<%=users.getLianxi() %>" />
							</div>
							<!--addList-->
							<div class="addList">
								<label><span class="red">* </span>证件号码:</label> <input
									type="text" name="shenfen" value="<%=users.getShenfen() %>" />

							</div>
							<!--addList-->
							<div class="addList">
								<label><span class="red">* </span>选择地区:</label><input
									type="text" name="address" value="<%=users.getAddress() %>" />

							</div>
							<!--addList-->
							<div class="addList2">
								<input type="submit" value="保存" width="79" height="30" />
							</div>

							<!--addList2/-->
							<% } %>

						</div>
					</form>
					<!--address/-->
				</div>
				<!--contRight/-->
				<div class="clears"></div>
			</div>
			<!--cont/-->
			<div class="inHelp">
				<div class="inHLeft">
					<h4>帮助中心</h4>
					<ul class="inHeList">
						<li><a href="/st-web/jsp/help.jsp">购物指南</a></li>
						<li><a href="/st-web/jsp/help.jsp">支付方式</a></li>
						<li><a href="/st-web/jsp/help.jsp">售后服务</a></li>
						<li><a href="/st-web/jsp/about.jsp">企业简介</a></li>
						<div class="clears"></div>
					</ul>
					<!--inHeList/-->
				</div>
				<!--inHLeft/-->
				<div class="inHLeft">
					<h4>会员服务</h4>
					<ul class="inHeList">
						<li><a href="/st-web/jsp/reg.jsp">会员注册</a></li>
						<li><a href="/st-web/jsp/login.jsp">会员登录</a></li>
						<li><a href="/st-web/jsp/order.jsp">购物车</a></li>
						<li><a href="/st-web/jsp/order.jsp">我的订单</a></li>
						<div class="clears"></div>
					</ul>
					<!--inHeList/-->
				</div>
				<!--inHLeft/-->
				<div class="inHRight">
					<h4>全国统一免费服务热线</h4>
					<div class="telBox">400-0000-0000</div>
					<div class="weibo">
						<wb:follow-button uid="2991975565" type="red_1" width="67"
							height="24"></wb:follow-button>
					</div>
				</div>
				<!--inHRight/-->
				<div class="clears"></div>
			</div>
			<!--inHelp/-->
			<div class="footer">
				<p>
					<a href="#">进入17官网</a>&nbsp;|&nbsp; <a href="/st-web/jsp/index.jsp">商城首页</a>&nbsp;|&nbsp;
					<a href="/st-web/jsp/product.jsp">促销中心</a>&nbsp;|&nbsp; <a
						href="/st-web/jsp/order.jsp">我的订单</a>&nbsp;|&nbsp; <a
						href="/st-web/jsp/new.jsp">新闻动态</a>&nbsp;|&nbsp; <a
						href="/st-web/jsp/login.jsp">会员中心</a>&nbsp;|&nbsp; <a
						href="/st-web/jsp/help.jsp">帮助中心</a>
				</p>
				<p>版权所有：上海17实业有限公司 版权所有 Copyright 2010-2015 沪ICP备00000000号</p>
			</div>
			<!--footer/-->
		</div>
		<!--mianCont/-->
		<a href="#" class="backTop">&nbsp;</a>
</body>
</html>