<%@page import="st.core.session.SessionUtils"%>
<%@page import="st.system.model.AddressModel"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
function update(id){
	var uu="../Address/selectAddress.do";
	$.ajax({
		url:uu,
		type:"POST",
		data:"id="+id+"",
		dateType:"json",
		contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
		success:function(data){
			$(".address").stop(true,true).slideDown();
			$("#id").val(data.id)
			$("#sheng").val(data.sheng)
			$("#shi").val(data.shi)
			$("#qu").val(data.qu)
			$("#xxaddress").val(data.xxaddress)
			$("#name").val(data.name)
			$("#telephone").val(data.telephone)
		}
	})
}
function deletes(id){
	$.ajax({
		url:"../Address/deleteAddress.do",
		type:"POST",
		data:"id="+id+"",
		dateType:"text",
		contentType: 'application/x-www-form-urlencoded; charset=UTF-8',//防止乱码
		success:function(data){	
			if(data==1){
				$("#"+id).remove();
			}
		}
	})
}
function insert(){
	$(".address1").stop(true,true).slideDown();
}

</script>
</head>

<body>
 <div class="mianCont">
  <div class="top">
   <span id = "aaaa">您好！欢迎来到17商城 请&nbsp;<a href="/st-web/jsp/login.jsp">[登录]</a>&nbsp;<a href="/st-web/jsp/reg.jsp">[注册]</a></span>
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
     <li><a href="/st-web/Shangpin/selectShangpin.do">促销中心</a></li>
     <li><a href="../Users/address.do">会员中心</a></li>
     <li><a href="/st-web/jsp/help.jsp">帮助中心</a></li>
     <div class="clears"></div>
     <div class="phone">TEL：021-12345678</div>
    </ul><!--nav/-->
   </div><!--pntRight/-->
   <div class="clears"></div>
  </div><!--pnt/-->
  <div class="positions">
   当前位置：<a href="/st-web/jsp/index.jsp">首页</a> &gt; <a href="/st-web/jsp/vip.jsp">会员中心</a>
    &gt; <a href="#" class="posCur">我的订单</a>
  </div><!--positions/-->
  <div class="cont">
   <div class="contLeft" id="contLeft">
    <h3 class="leftTitle">会员中心</h3>
    <dl class="helpNav vipNav">
     <dt>我的主页</dt>
      <dd>
       <a href="/st-web/jsp/vipMy.jsp">个人中心</a>
       <a href="/st-web/jsp/vipOrder.jsp">我的订单</a>
      </dd>
     <dt>账户设置</dt>
      <dd>
       <a href="/st-web/jsp/vipMy.jsp">个人信息</a>
       <a href="../Address/address.do?username=${model.username}" class="vipCur">收货地址</a>
      </dd>
      <dt>客户服务</dt>
       <dd>
        <a href="/st-web/jsp/vipExit.jsp">网站使用条款</a>
        <a href="/st-web/jsp/vipTuihuo.jsp">网站免责声明</a>
       </dd>
    </dl><!--helpNav/-->
   </div><!--contLeft/-->
   <div class="contRight">
   <!-- 修改地址信息 -->
  <form action="../Address/updateAddress.do" method="post">
  	<input type="hidden" name="username" value="${model.username}"/>
   <h2 class="oredrName">
    收货地址
   </h2>
   <div class="address">
    <div class="addList">
    <input type="hidden" id="id" name = "id"/>
     <label><span class="red">* </span>选择地区:</label>
     <select id="sheng" name="sheng" >
      <option>请选择省</option>
      <option value="山东省">山东省</option>
     </select>
     <select id="shi" name="shi">
      <option>请选择市</option>
      <option value="青岛市">青岛市</option>
     </select>
     <select id="qu" name="qu">
      <option>请选择地区</option>
      <option value="城阳区">城阳区</option>
     </select>
    </div><!--addList-->
    <div class="addList">
     <label><span class="red">* </span>详细地址:</label>
     <input type="text"  id="xxaddress" name="xxaddress"value=""/>
    </div><!--addList-->
    <div class="addList">
     <label><span class="red">* </span>收件人:</label>
     <input type="text" id ="name" name="name" value=""/>
    </div><!--addList-->
    <div class="addList">
     <label><span class="red">* </span>手机号码:</label>
     <input type="text" id="telephone" name="telephone"value=""/>
    </div><!--addList--> 
    <div class="addList2">
     <input type="submit" value="保存" />
    </div><!--addList2/-->
     
   </div><!--address/-->
   </form>
   <!-- 添加地址信息 -->
   <form action="../Address/addAddress.do" method="post">
   <input type="hidden" name="username" value="${model.username}"/>
   <div class="address1">
    <div class="addList">
    <input type="hidden" id="id" name = "id"/>
     <label><span class="red">* </span>选择地区:</label>
     <select id="sheng" name="sheng" >
      <option>请选择省</option>
      <option value="山东省">山东省</option>
     </select>
     <select id="shi" name="shi">
      <option>请选择市</option>
      <option value="青岛市">青岛市</option>
     </select>
     <select id="qu" name="qu">
      <option>请选择地区</option>
      <option value="城阳区">城阳区</option>
     </select>
    </div><!--addList-->
    <div class="addList">
     <label><span class="red">* </span>详细地址:</label>
     <input type="text"  id="xxaddress" name="xxaddress"value=""/>
    </div><!--addList-->
    <div class="addList">
     <label><span class="red">* </span>收件人:</label>
     <input type="text" id ="name" name="name" value=""/>
    </div><!--addList-->
    <div class="addList">
     <label><span class="red">* </span>手机号码:</label>
     <input type="text" id="telephone" name="telephone"value=""/>
    </div><!--addList--> 
    <div class="addList2">
     <input type="submit" value="保存" />
    </div><!--addList2/-->
     
   </div><!--address/-->
   </form>
   
   <table class="vipAdress">
    <tr>
     <th></th>
     <th>收货人</th>
     <th>电话/手机</th>
     <th>所在地区</th>
     <th>详细地址</th>
     <th>操作</th>
    </tr>
    <% List<AddressModel> model = (List<AddressModel>)SessionUtils.getAttr(request, "addressModel"); %>
    	<% 	
    		for(int i = 0; i < model.size(); i++){
    		AddressModel address = model.get(i);
    	 %>
    <tr id="<%= address.getId() %>">
     <td><input type="hidden" value="<%= address.getId() %>" name="username"></td>
     <td><span name="name"><%= address.getName() %></span></td>
     <td><span name="telephone"><%= address.getTelephone() %></span></td>
     <td><span name="sheng"><%= address.getSheng()%></span><span name="shi"><%= address.getShi() %></span><span name="qu"><%= address.getQu()%></span></td>
     <td><span name="xxaddress"><%= address.getXxaddress() %></span></td>
     <td><span class="green upd" onclick="update('<%= address.getId()%>')">[修改]</span> | <span class="green add" onclick="insert()">[添加]</span> | <span class="green add" onclick="deletes('<%= address.getId()%>')">[删除]</span></td>
    </tr>
    
    <% } %>
    
    	
   </table><!--vipAdress/-->
   </div>
   <!--contRight/-->
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