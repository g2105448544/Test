<%@page import="st.core.session.SessionUtils"%>
<%@page import="st.system.model.MaijiaModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="../css/css.css" rel="stylesheet" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/js.js"></script>
<!-- <script src="../js/wb.js" type="text/javascript" charset="utf-8"></script> -->
<script type="text/javascript">
 $(function(){
	 $(".vipNav dd:eq(1)").show();
	 
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
	 })
	 function goPage(pageIndex){
		$("#pageIndex").val(pageIndex);/*赋值*/
		$("#searchForm").submit();
	};


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
       <a href="../Maijia/xsShangpin.do?user_id=${model12.username}">发布商品</a>
      </dd>
    </dl><!--helpNav/-->
   </div><!--contLeft/-->
   <div class="contRight">
   <h2 class="oredrName">

   </h2>
   <div class="address">
  	<h2>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;添加分类</h2>
    <div class="addList">
    
     <label><span class="red">* </span>分类名称:</label>
     <input type="text" placeholder="请输入分类名称"/>
    </div><!--addList-->
     <div class="addList">
     <label><span class="red">* </span>上一级编码:</label>
     
    </div><!--addList-->
    <div class="addList">
     <label><span class="red">* </span>商品编码:</label>
     <input type="text" placeholder="请输入商品编码"/>
    </div><!--addList-->
    <div class="addList2">
    <input type="image" src="../images/queren.jpg" width="100" height="32" />
    </div><!--addList2/-->
   </div><!--address/-->
   <table class="vipAdress">
    <tr>
     <th>分类名称</th>
     <th>分类编码</th>
     <th>上一级编码</th>
    </tr>
    <% List<MaijiaModel> xs = (List<MaijiaModel>)SessionUtils.getAttr(request, "xsFenlei");%>
    <% for(int i = 0;i < xs.size(); i++){
    	MaijiaModel xianshi = xs.get(i);
     %> 
    <tr>
     <td><%=xianshi.getName() %></td>
     <td><%=xianshi.getCode() %></td>
     <td><%=xianshi.getSupercode() %></td>
    </tr>
    <%} %> 
   </table><!--vipAdress/-->
   
   
   <form action="${pageContext.request.contextPath}/Maijia/xsFenlei.do" class="subBox" id="searchForm">
    	<input type="hidden" name="page" id="pageIndex" />
   </form>
   
   
   
   <!-- 分页开始 -->
				<div class="centerF">
				 <ul class="pagination" >
			    <c:if test="${search.page==1}">
		              <li >
		                 <a href="javascript:void(0);"><!--添加void（0），单击无操作  -->
		                   <span aria-hidden="true">&laquo;</span>
		                 </a>
		              </li>
          		 </c:if>
		         <c:if test="${search.page!=1}"><!-- 当前页不等于一  即执行下方《li》 -->
		              <li>
		                 <a href="javascript:goPage('${search.page-1}');" >
		                   <span aria-hidden="true">&laquo;</span>
		                 </a>
		              </li>
		         </c:if>
											<!-- 总数量除以每页数量得出页数 -->
			   <c:forEach begin="1" end="${search.pager.pageCount}" var="page"><!-- 遍历页数 -->
	              <c:if test="${search.page!=page}"><!-- 跳转页面 -->
	                   <li><a href="javascript:goPage('${page}');">${page}</a></li>
	              </c:if>
	              <!-- 遍历的时候page和pageIndex相等，高亮显示 -->
	              <c:if test="${search.page==page}">
	                   <li><a class="active" href="javascript:void(0);">${page}</a></li>
	              </c:if>
          	   </c:forEach>

			  
			   
			 <c:if test="${search.page == search.pager.pageCount}">
		              <li >
		                 <a href="javascript:void(0);" aria-label="Previous">
		                   <span aria-hidden="true">&raquo;</span>
		                 </a>
		              </li>
          	</c:if>
		    <c:if test="${search.page!=search.pager.pageCount}">
		              <li >
		                 <a href="javascript:goPage('${search.page+1}');" aria-label="Previous">
		                   <span aria-hidden="true">&raquo;</span>
		                 </a>
		              </li>
		     </c:if>
			 
			  </ul>
				
   			</div>
   <!-- 分页结束 -->
   
   
   
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