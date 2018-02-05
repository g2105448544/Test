<%@page import="st.system.model.GouwucheModel"%>
<%@page import="st.core.session.SessionUtils"%>
<%@page import="st.system.model.ShangpinModel"%>
<%@page import="java.util.List"%>
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
<script src="../js/wb.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
$(function(){
	$("#kinMaxShow").kinMaxShow();
	var param="/st-web/dict/getUser.do";
	$.ajax({
		url:param,
		type:"POST",
		dateType:"text",
		success:function(data){
			if(data == null || data == ""){
				return ;
				}
				$("#aaaa").html(data+"欢迎来到17商城<a href ='../dict/logout.do?key="+data+"'>[注销]</a>")
			
		}
	})
});
function jia(id){
	var shu = $("#shuliang"+id+"").val();
	var liang = parseInt(shu)
	$("#shuliang"+id+"").val(liang+1)
	
	var qian = $("#danjia"+id+"").text();
	var jq = parseFloat(qian)
	var shuliang = $("#shuliang"+id+"").val();
	var sl = parseInt(shuliang)
	var jine = (jq*100)*sl/100;
	$("#zongjine"+id+"").text(jine)
	$.ajax({
		url:"../gouwuche/updateGouwuche.do",
		type:"POST",
		data:"id="+id+"&quantity="+$("#shuliang"+id+"").val()+"",
		
		dateType:"text",
		contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
		success:function(data){
		}
	})
}
function jian(id){
	var pp = $("#shuliang"+id+"").val();
	var ss = parseInt(pp)
	if(ss>1){$("#shuliang"+id+"").val(ss-1)}
	
	var qian = $("#danjia"+id+"").text();
	var jq = parseFloat(qian)
	var shuliang = $("#shuliang"+id+"").val();
	var sl = parseInt(shuliang)
	var jine = (jq*100)*sl/100;
	$("#zongjine"+id+"").text(jine)
	$.ajax({
		url:"../gouwuche/updateGouwuche.do",
		type:"POST",
		data:"id="+id+"&quantity="+$("#shuliang"+id+"").val()+"",
		dateType:"text",
		contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
		success:function(data){
		}
	})
}
</script>
</head>
<body>
 <div class="mianCont">
  <div class="top">
   <span id="aaaa">您好！欢迎来到17商城 请&nbsp;<a href="/st-web/jsp/login.jsp">[登录]</a>&nbsp;<a href="/st-web/jsp/reg.jsp">[注册]</a></span>
   <span class="topRight">
    <a href="/st-web/jsp/vip.jsp">我的17</a>&nbsp;| 
    <a href="/st-web/jsp/order.jsp">我的订单</a>&nbsp;| 
    <a href="/st-web/jsp/login.jsp">会员中心</a>&nbsp;|
    <a href="/st-web/jsp/contact.jsp">联系我们</a>
   </span>
  </div><!--top/-->
  <div class="lsg">
   <h1 class="logo"><a href="/st-web/jsp/index.jsp"><img src="../images/logo.png" width="217" height="90" /></a></h1>
   <form action="#" method="get" class="subBox">
    <div class="subBoxDiv">
     <input type="text" class="subLeft" />
     <input type="image" src="../images/subimg.png" width="63" height="34" class="sub" />
     <div class="hotWord">
      热门搜索：
      <a href="/st-web/jsp/proinfo.jsp">冷饮杯</a>&nbsp;
      <a href="/st-web/jsp/proinfo.jsp">热饮杯</a> &nbsp;
      <a href="/st-web/jsp/proinfo.jsp">纸杯</a>&nbsp;
      <a href="/st-web/jsp/proinfo.jsp">纸巾</a>  &nbsp;
      <a href="/st-web/jsp/proinfo.jsp">纸巾</a> &nbsp;
      <a href="/st-web/jsp/proinfo.jsp">纸杯</a>&nbsp;
     </div><!--hotWord/-->
    </div><!--subBoxDiv/-->
   </form><!--subBox/-->
   <div class="gouwuche">
    <div class="gouCar">
     &nbsp;&nbsp;&nbsp;<img src="../images/gouimg.png" width="19" height="20" style="position:relative;top:6px;" />&nbsp;|&nbsp;
     <a href="../gouwuche/selectGowuche.do?userid=${model.username}">购物车</a> <img src="../images/youjian.jpg" width="5" height="8" />    
    </div><!--gouCar/--> 
    <div class="myChunlv">
     <a href="../Users/address.do?username=${model.username}"><img src="../images/mychunlv.jpg" width="112" height="34" /></a>
    </div><!--myChunlv/-->
   </div><!--gouwuche/-->
  </div><!--lsg/-->
  <div class="pnt">
   <div class="pntLeft">
    <h2 class="Title">所有商品分类
     <ul class="InPorNav">
     <li><a href="/st-web/jsp/product.jsp">纸杯系列</a>
      <div class="chilInPorNav">
       <a href="#">单层热饮杯</a>
       <a href="#">双层中空杯</a>
       <a href="#">瓦楞隔热杯</a>
       <a href="#">双淋膜冷饮杯</a>
       <a href="#">爆米花桶</a>
       <a href="#">纸碗</a>
       <a href="#">冰淇淋纸杯</a>
       <a href="#">PS杯盖</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="/st-web/jsp/product.jsp">PET系列</a>
      <div class="chilInPorNav">
       <a href="#">PET透明杯</a>
       <a href="#">PET透明盖</a>
       <a href="#">PET透明沙拉盒</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="/st-web/jsp/product.jsp">饮品杯配套系列</a>
      <div class="chilInPorNav">
       <a href="#">杯袖</a>
       <a href="#">环保纸浆杯托</a>
       <a href="#">纸杯打包袋</a>
       <a href="#">吸管</a>
       <a href="#">搅拌棒</a>
       <a href="#">杯盖</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="/st-web/jsp/product.jsp">纸浆环保餐具系列</a>
      <div class="chilInPorNav">
       <a href="#">纸碟</a>
       <a href="#">纸碗</a>
       <a href="#">纸浆带盖汤碗</a>
       <a href="#">连体餐盒</a>
       <a href="#">分体餐盒</a>
       <a href="#">纸浆沙拉盒</a>
       <a href="#">纸托盘</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="/st-web/jsp/product.jsp">纸餐盒系列</a>
      <div class="chilInPorNav">
       <a href="#">圆底纸餐盒</a>
       <a href="#">方底纸餐盒</a>
       <a href="#">三明治纸盒</a>
       <a href="#">蛋糕盒</a>
       <a href="#">其他纸餐盒</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="/st-web/jsp/product.jsp">刀叉勺餐具</a>
      <div class="chilInPorNav">
       <a href="#">PS刀叉勺系列</a>
       <a href="#">PLA刀叉勺系列</a>
       <a href="#">淀粉刀叉勺系列</a>
       <a href="#">搅拌棒/吸管</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="/st-web/jsp/product.jsp">生活用纸</a>
      <div class="chilInPorNav">
       <a href="#">餐巾纸</a>
       <a href="#">抽纸</a>
       <a href="#">卫生纸</a>
       <a href="#">擦手纸</a>
       <a href="#">其他纸类</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="/st-web/jsp/product.jsp">纸袋/环保打包袋</a>
      <div class="chilInPorNav">
       <a href="#">纸袋</a>
       <a href="#">环保淀粉塑料袋</a>
       <a href="#">PLA塑料袋</a>
       <a href="#">食品袋</a>
      </div><!--chilLeftNav/-->
     </li>
    </ul><!--InPorNav/-->
    </h2>
   </div><!--pntLeft/-->
   <div class="pntRight">
    <ul class="nav">
     <li><a href="/st-web/jsp/index.jsp">商城首页</a></li>
     <li><a href="/st-web/jsp/product.jsp">促销中心</a></li>
     <li><a href="/st-web/jsp/login.jsp">会员中心</a></li>
     <li class="navCur"><a href="/st-web/jsp/help.jsp">帮助中心</a></li>
     <div class="clears"></div>
     <div class="phone">TEL：021-12345678</div>
    </ul><!--nav/-->
   </div><!--pntRight/-->
   <div class="clears"></div>
  </div><!--pnt/-->
  <div class="positions">
   当前位置：<a href="/st-web/jsp/index.jsp">首页</a> &gt; <a href="#" class="posCur">购物车</a>
  </div><!--positions/-->
  <div class="cont">
   <div class="carImg"><img src="../images/car1.jpg" width="951" height="27" /></div>
   <form action="../gouwuche/addDingdan.do" method="post">
   <table class="orderList">
    <tr>
     <th width="20"></th>
     <th width="430">商品</th>
     <th width="135">单价</th>
     <th width="135">数量</th>
     <th width="135">总金额</th>
     <th>操作</th>
    </tr>
    <% List<GouwucheModel> list = (List)SessionUtils.getAttr(request, "gouwuche"); %>
    <% for(int i = 0; i < list.size(); i++){
    	GouwucheModel sp = list.get(i);
     %>
    <tr>
     <td><input type="checkbox" id="checkbox<%=sp.getId() %>" value="<%=sp.getId()%>" name="spid" /></td>
     <input type="hidden" value="<%= sp.getId()%>" />
     <td>
      <dl>
       <dt><a href="/st-web/jsp/proinfo.jsp"><img src="<%=sp.getUrl()%>" width="85" height="85" /></a></dt>
       <dd><%=sp.getName() %><br /><span class="red">有货：</span>从上海出发</dd>
       <div class="clears"></div>
      </dl>
     </td>
     <td>￥<strong class="red" id="danjia<%=sp.getId()%>"><%= sp.getPrice() %></strong></td>
     <td>
     <div class="jia_jian">
      <img src="../images/jian.jpg" width="21" height="25" class="jian" onclick="jian('<%=sp.getId()%>')"/>
      <input type="text" class="shuliang" value="<%= sp.getQuantity() %>" id="shuliang<%=sp.getId() %>"/>
      <img src="../images/jia.jpg" width="21" height="25" class="jia" onclick="jia('<%=sp.getId()%>')"/>
     </div>
     </td>
     <td>￥<strong class="red" id="zongjine<%=sp.getId()%>"><%=sp.getPrice() %></strong></td>
     <td><a href="../gouwuche/deleteGowuche.do?id=<%=sp.getId() %>" class="green">删除</a></td>
    </tr>
   <%} %>
   </table><!--orderList/-->
   
   <div class="jiesuan">
    <a href="/st-web/jsp/shangpin.jsp" class="jie_1">继续购物&gt;&gt;</a>&nbsp;
	    <input type="submit"  class="jie_2" value="立即结算&gt;&gt;"style="width: 90px;height: 30px;"/>
    <div class="clears"></div>
   </div><!--jiesuan/-->
    </form>
   <div class="clears"></div>
  </div><!--cont/-->
 
  <div class="inHelp">
   <div class="inHLeft">
    <h4>帮助中心</h4>
    <ul class="inHeList">
     <li><a href="/st-web/jsp/help.jsp">购物指南</a></li>
     <li><a href="/st-web/jsp/help.jsp">支付方式</a></li>
     <li><a href="/st-web/jsp/help.jsp">售后服务</a></li>
     <li><a href="/st-web/jsp/about.jsp">企业简介</a></li>
     <div class="clears"></div>
    </ul><!--inHeList/-->
   </div><!--inHLeft/-->
   <div class="inHLeft">
    <h4>会员服务</h4>
    <ul class="inHeList">
     <li><a href="/st-web/jsp/reg.jsp">会员注册</a></li>
     <li><a href="/st-web/jsp/login.jsp">会员登录</a></li>
     <li><a href="/st-web/jsp/order.jsp">购物车</a></li>
     <li><a href="/st-web/jsp/order.jsp">我的订单</a></li>
     <div class="clears"></div>
    </ul><!--inHeList/-->
   </div><!--inHLeft/-->
   <div class="inHRight">
    <h4>全国统一免费服务热线</h4>
    <div class="telBox">400-0000-0000</div>
    <div class="weibo">
    <wb:follow-button uid="2991975565" type="red_1" width="67" height="24" ></wb:follow-button>
    </div>
   </div><!--inHRight/-->
   <div class="clears"></div>
  </div><!--inHelp/-->
  <div class="footer">
   <p>
   <a href="#">进入17官网</a>&nbsp;|&nbsp;
   <a href="/st-web/jsp/index.jsp">商城首页</a>&nbsp;|&nbsp;
   <a href="/st-web/jsp/product.jsp">促销中心</a>&nbsp;|&nbsp;
   <a href="/st-web/jsp/order.jsp">我的订单</a>&nbsp;|&nbsp;
   <a href="/st-web/jsp/new.jsp">新闻动态</a>&nbsp;|&nbsp;
   <a href="/st-web/jsp/login.jsp">会员中心</a>&nbsp;|&nbsp;
   <a href="/st-web/jsp/help.jsp">帮助中心</a>
   </p>
   <p>
    版权所有：上海17实业有限公司 版权所有  Copyright 2010-2015   沪ICP备00000000号      
   </p>
  </div><!--footer/-->
 </div><!--mianCont/-->
 <a href="#" class="backTop">&nbsp;</a>
</body>
</html>
