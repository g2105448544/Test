<%@page import="st.system.model.AddressModel"%>
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
<script src="../js/MagicZoom.js" type="text/javascript"></script>
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
     <li><a href="index.jsp">商城首页</a></li>
     <li class="navCur"><a href="/st-web/jsp/product.jsp">促销中心</a></li>
     <li><a href="login.jsp">会员中心</a></li>
     <li><a href="help.jsp">帮助中心</a></li>
     <div class="clears"></div>
     <div class="phone">TEL：021-12345678</div>
    </ul><!--nav/-->
   </div><!--pntRight/-->
   <div class="clears"></div>
  </div><!--pnt/-->
  <div class="positions">
   当前位置：<a href="index.jsp">首页</a> &gt; <a href="#" class="posCur">促销商品</a>
  </div><!--positions/-->
  <div class="cont">
   <div class="contLeft">
    <ul class="leftPorNav">
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
   </div><!--contLeft/-->
   <form action="../gouwuche/addGouwuche.do" method="post">
    <%ShangpinModel m = (ShangpinModel)SessionUtils.getAttr(request, "proinfo"); %>
   <div class="contRight" style="border:0;">
   <div class="proBox">
   <div id="tsShopContainer">
	<div id="tsImgS"><a href="<%= m.getUrl() %>" title="Images" class="MagicZoom" id="MagicZoom"><img width="300" height="300" src="<%= m.getUrl() %>" /></a></div>
	<div id="tsPicContainer">
		<div id="tsImgSArrL" onclick="tsScrollArrLeft()"></div>
		<div id="tsImgSCon">
		</div>
		<div id="tsImgSArrR" onclick="tsScrollArrRight()"></div>
	</div>
	<img class="MagicZoomLoading" width="16" height="16" src="../images/loading.gif" alt="Loading..." />
    <script src="../js/ShopShow.js"></script>
    </div><!--tsShopContainer/-->
    <div class="proBoxRight">
   	<input type="hidden" name="sp_xinxi_id" value="<%= m.getId()%>" id="id<%= m.getId()%>"/>
   	<input type="hidden" name="userid" value="<%= m.getUser_id()%>"/>
     <h3 class="proTitle"><%= m.getName() %></h3>
     <div>会员价：<strong class="red" >￥<%= m.getPrice() %>/袋</strong> </div>
     <div>库存：<strong class="red"><%= m.getStock() %></strong></div>
     <ul class="rongliang">
      <li>100ml</li>
      <li>200ml</li><br>
      <li>300ml</li>
      <li>400ml</li><br>
      <li>500ml</li>
      <div class="clears"></div>
     </ul><!--rongliang/-->
     <div class="shuliang2">
      数量： <input name="quantity" type="text" value="1" />
     </div><!--shuliang2/-->
     <div class="gc">
      <a href="/st-web/jsp/order.jsp"><img src="../images/goumai.png" width="117"  height="36" /></a>&nbsp;&nbsp;
      <input type="image" j" src="../images/gouwuche.jpg" width="117" height="36"/>
     
     </div><!--gc/-->    
    </div><!--proRight/-->
    
    <div class="clears"></div>
    </div><!--proBox/-->
    <ul class="fangyuan">
      <li>商品描述</li>
      <li>商品参数</li>
      <li>商品评论</li>
      <li>商品晒图</li>
      <div class="clears"></div>
    </ul><!--fangyuan/-->
    <div class="fangList">
    <div class="fangPar">
         乐购超市旁，未来地铁14号线沿线地段，规划中上海四大商业附中心—真如商业副中心，婚房精装电梯两房。让您一步到位<br />
    很荣幸栗见能借此机会给您问好，为您介绍此房.<br />
    超稀缺地铁双南两房，全明户型，满五唯一，业主急需资金周转特急卖。<br />
    Information of Vernal Garden 满庭芳花园 <br />
    Location:<br />
    Located close to Gubei Carrefour and the Hongqiao Airport, 15 mins drive to international schools and downtown area.<br />
    Description:<br />
    It offers a full range of accommodations including freestanding houses, semi-detached houses and condominiums. The units are very spacious, well decorated and fully furnished. Resident can enjoy a complete range of onsite <br />recreational facilities. <br />
    Facilities:<br />
    Indoor swimming door, gym, sauna, spa, squash, cafe, childrens playground, restaurant, convenience store, snooker, basketball court. <br />
    Tv Channel:<br />
    HBO，TVB，BBC，DISCOVERY，CINEMAX，
    </div><!--fangPar/-->
    <img src="../images/ban1.jpg" width="756" height="310" />
    </div><!--fangList/-->
    <div class="fangList">
     商品参数
    </div><!--fangList/-->
    <div class="fangList">
     商品评论
    </div><!--fangList/-->
    <div class="fangList">
     <img src="../images/rdPro1.jpg" width="132" height="129" /><br /><br />
     <img src="../images/rdPro2.jpg" width="132" height="129" /><br /><br />
     <img src="../images/rdPro3.jpg" width="132" height="129" /><br /><br />
     <img src="../images/rdPro4.jpg" width="132" height="129" /><br /><br />
     <img src="../images/rdPro5.jpg" width="132" height="129" /><br /><br />
    </div><!--fangList/-->
   </div><!--contRight/-->
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
