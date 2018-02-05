<%@page import="st.core.session.SessionUtils"%>
<%@page import="st.system.model.MaijiaModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="../css/css.css" rel="stylesheet" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/js.js"></script>
<!--  <script src="../js/wb.js" type="text/javascript" charset="utf-8"></script>  -->
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
});
function insert(){
	$(".address").stop(true,true).slideDown();
}
function deletes(id){
	alert("123")
	$.ajax({
		url:"../Maijia/deleteShangpin.do",
		type:"POST",
		data:"id="+id+"",
		dateType:"text",
		contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
		success:function(data){	
			alert(data)
			if(data==1){
				$("#"+id).remove();
				window.location.href="/st-web/jsp/mai2.jsp";
			}
		}
	})
}


</script>
</head>
<body>
 <div class="mianCont">
  <div class="top">
   <span id="aaaa">您好！欢迎来到17商城 请&nbsp;<a href="../jsp/login.jsp">[登录]</a>&nbsp;<a href="../jsp/reg.jsp">[注册]</a></span>
   <span class="topRight">
    <a href="../jsp/vip.jsp">我的17</a>&nbsp;| 
    <a href="../jsp/order.jsp">我的订单</a>&nbsp;| 
    <a href="../jsp/login.jsp">会员中心</a>&nbsp;|
    <a href="../jsp/contact.jsp">联系我们</a>
   </span>
  </div><!--top/-->
  <div class="lsg">
   <h1 class="logo"><a href="../jsp/index.jsp"><img src="../images/logo.png" width="217" height="90" /></a></h1>
   <form action="#" method="get" class="subBox">
    <div class="subBoxDiv">
     <input type="text" class="subLeft" />
     <input type="image" src="../images/subimg.png" width="63" height="34" class="sub" />
    </div><!--subBoxDiv/-->
   </form><!--subBox/-->
  </div><!--lsg/-->
  <div class="pnt">
   <div class="clears"></div>
  </div><!--pnt/-->
  <div class="cont">
   <div class="contLeft" id="contLeft">
    <h3 class="leftTitle"><a href="../jsp/maiIndex.jsp">卖家中心</a></h3>
    <dl class="helpNav vipNav">
     <dt>商品发布</dt>
      <dd>
       <a href="../Maijia/xsFenlei.do?user_id=${model12.username}">查看分类</a>
       <a href="#">发布商品</a>
      </dd>
    </dl><!--helpNav/-->
   </div><!--contLeft/-->
   <div class="contRight">
   <h2 class="oredrName">
   </h2>
   <form action="../Maijia/addShangpin.do" method="post" enctype="multipart/form-data"
   >
   <div class="address">
    <div class="addList">
     <label><span class="red">* </span>商品分类:</label>
    <select name="sp_fenlei_id">
      <option>请选择分类</option>
      <option value="DC">单层热饮杯</option>
      <option value="SC">双层中空杯</option>
      <option value="WL">瓦楞隔热杯</option>
      <option value="SLM">双淋膜冷饮杯</option>
      <option value="BMH">爆米花桶</option>
      <option value="ZW">纸碗</option>
      <option value="BQL">冰淇淋纸杯</option>
      <option value="PS">PS杯盖</option>
      <option value="PET1">PET透明杯</option>
      <option value="PET2">PET透明盖</option>
      <option value="PET3">PET透明沙拉盒</option>
      <option value="BX">杯袖</option>
      <option value="HB">环保纸浆杯托</option>
      <option value="ZBD">纸杯打包袋</option>
      <option value="XG">吸管</option>
      <option value="JB">搅拌棒</option>
      <option value="BG">杯盖</option>
      <option value="ZD">纸碟</option>
      <option value="ZW">纸碗</option>
      <option value="ZJDG">纸浆带盖汤碗</option>
      <option value="LT">连体餐盒</option>
      <option value="FT">分体餐盒</option>
      <option value="ZJSL">纸浆沙拉盒</option>
      <option value="ZT">纸托盘</option>
      <option value="YD">圆底纸餐盒</option>
      <option value="FD">方底纸餐盒</option>
      <option value="SMZ">三明治纸盒</option>
      <option value="DG">蛋糕盒</option>
      <option value="QT">其他纸餐盒</option>
      <option value="PSDCS">PS刀叉勺系列</option>
      <option value="PLADC">PLA刀叉勺系列</option>
      <option value="DF">淀粉刀叉勺系列</option>
      <option value="JBB">搅拌棒/吸管</option>
      <option value="ZCJ">纸餐巾</option>
      <option value="CZ">抽纸</option>
      <option value="WSZ">卫生纸</option>
      <option value="CSZ">擦手纸</option>
      <option value="QTZL">其他纸类</option>
      <option value="ZD">纸袋</option>
      <option value="HBDF">环保淀粉塑料袋</option>
      <option value="PALSLD">PLA塑料袋</option>
      <option value="SPD">食品袋</option>
     </select>
    </div><!--addList-->
    <div class="addList">
     <label><span class="red">* </span>商品名称:</label>
     <input type="text" placeholder="请输入商品名称" name="name"/>
    </div><!--addList-->
    <div class="addList">
     <label><span class="red">* </span>商品单价:</label>
     <input type="text" placeholder="请输入商品单价" name="price"/><br>
    </div><!--addList--> 
     <div class="addList">
     <label><span class="red">* </span>商品数量:</label>
     <input type="text" placeholder="请输入商品数量" name="stock"/><br>
    </div><!--addList--> 
    <div  class="addList">
     <label><span class="red">* </span>商品图片:</label>
     <input type="file" name="urla">
    </div>
    <div class="addList2">
     <br><input type="image" src="../images/baocun.jpg" width="100" height="32" />
    </div><!--addList2/-->
   </div><!--address/-->
   </form>
   <table class="vipAdress">
    <tr>
     <th>分类名称</th>
     <th>商品名称</th>
     <th>库存</th>
     <th>商品单价</th>
     <th>操作</th>
    </tr>
      <% List<MaijiaModel> xs = (List<MaijiaModel>)SessionUtils.getAttr(request, "xsshangpin");%>
    <% for(int i = 0;i < xs.size(); i++){
    	MaijiaModel xianshi = xs.get(i);
     %> 
     <input type="hidden" value="<%= xianshi.getUrl() %>">
    <tr>
    
     <td><%=xianshi.getName() %></td>
     <td><%=xianshi.getSpname() %></td>
     <td><%=xianshi.getStock() %></td>
     <td><%=xianshi.getPrice() %></td>
     <td><span class="green upd" onclick="deletes('<%=xianshi.getId()%>')">[删除]</span> | <span class="green add" onclick="insert()">[添加]</span> </td>
    </tr>
     <%} %>  
   </table><!--vipAdress/-->
   
   </div>
   <!--contRight/-->
   <div class="clears"></div>
  </div><!--cont/-->
  <div class="inHelp">
   <div class="inHLeft">
    <h4>帮助中心</h4>
    <ul class="inHeList">
     <li><a href="help.html">购物指南</a></li>
     <li><a href="help.html">支付方式</a></li>
     <li><a href="help.html">售后服务</a></li>
     <li><a href="about.html">企业简介</a></li>
     <div class="clears"></div>
    </ul><!--inHeList/-->
   </div><!--inHLeft/-->
   <div class="inHLeft">
    <h4>会员服务</h4>
    <ul class="inHeList">
     <li><a href="reg.html">会员注册</a></li>
     <li><a href="login.html">会员登录</a></li>
     <li><a href="order.html">购物车</a></li>
     <li><a href="order.html">我的订单</a></li>
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
   <a href="../jsp/index.jsp">商城首页</a>&nbsp;|&nbsp;
   <a href="../jsp/product.jsp">促销中心</a>&nbsp;|&nbsp;
   <a href="../jsp/order.jsp">我的订单</a>&nbsp;|&nbsp;
   <a href="../jsp/new.jsp">新闻动态</a>&nbsp;|&nbsp;
   <a href="../jsp/login.jsp">会员中心</a>&nbsp;|&nbsp;
   <a href="../jsp/help.jsp">帮助中心</a>
   </p>
   <p>
    版权所有：上海17实业有限公司 版权所有  Copyright 2010-2015   沪ICP备00000000号   <a href="http://www.mycodes.net/" target="_blank">源码之家</a>   
   </p>
  </div><!--footer/-->
 </div><!--mianCont/-->
 <a href="#" class="backTop">&nbsp;</a>
</body>
</html>