
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>订单</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Eshop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- cart -->
	<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
</head>
<body>
	<!-- header-section-starts -->
	<div class="header">
		<div class="header-top-strip">
			<div class="container">
				<div class="header-top-left">
					<ul>
						<li><a href="index.jsp"><span class="glyphicon glyphicon-user"> </span>首页</a></li>
					</ul>
				</div>
				<div class="header-right">
						
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	
		<!-- registration-form -->
<div class="registration-form">
	<div class="container">
	<div class="dreamcrub">
			   	 <ul class="breadcrumbs">
                    <li class="home">
                       <a href="index.jsp" title="Go to Home Page">首页</a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li class="women">
                       订单
                    </li>
                </ul>
                <ul class="previous">
                	<li><a href="index.jsp">返回主页</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
		<h2>付款成功</h2>
		<div class="registration-grids">
			<div class="reg-form">
				<div class="reg">
					 <p>欢迎您，请输入以下详细信息继续。</p>
					 <p>如你曾在本公司登记，<a href="#">单击此处</a></p>
					 <form action="index.jsp" method="post">
						 <ul>
						 	<c:if test="${!empty list}">
						 		<c:forEach items="${list}" var="order">
									 <li class="text-info">订单号: ${order.order_number}</li>
									 <li class="text-info" style="margin-left: 0;">收货人: ${order.o_consignee}</li>
									 <li class="text-info">手机号: ${order.o_phone}</li>
									 <li class="text-info">地址: ${order.o_location}</li>
									 <li class="text-info">商品名称: ${order.goodsName}</li>
									 <li class="text-info">商品价格: ${order.pay_price}</li>
									 <c:if test="${order.is_ship==1}">
									 		<li class="text-info">是否发货: 已发货</li>
									 		<li class="text-info">发货时间: ${order.ship_time}</li>
									 </c:if>
									 <c:if test="${order.is_ship==0}">
									 		<li class="text-info">是否发货: 未发货</li>
									 </c:if>
								 </c:forEach>
						 	</c:if>
						 	<c:if test="${empty list}">
						 		<li class="text-info"><h3>支付失败</h3></li>
						 	</c:if>
						 </ul>
						 <input type="submit" value="返回主页" id="submit">
					 </form>
					 
				 </div>
			</div>
			
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- registration-form -->

		<div class="news-letter">
			<div class="container">
				<div class="join">
					<h6>加入我们的邮寄名单</h6>
					<div class="sub-left-right">
						<form>
							<input type="text" value="Enter Your Email Here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Email Here';}" />
							<input type="submit" value="SUBSCRIBE" />
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<div class="footer">
		<div class="container">
		 <div class="footer_top">
			<div class="span_of_4">
				<div class="col-md-3 span1_of_4">
					<h4>购物</h4>
					<ul class="f_nav">
						<li><a href="#">新品上市</a></li>
						<li><a href="#">男装</a></li>
						<li><a href="#">女装</a></li>
						<li><a href="#">配饰</a></li>
						<li><a href="#">童装</a></li>
						<li><a href="#">旗下品牌</a></li>
						<li><a href="#">行业动态</a></li>
						<li><a href="#">销售</a></li>
						<li><a href="#">风格视频</a></li>
					</ul>	
				</div>
				<div class="col-md-3 span1_of_4">
					<h4>帮助</h4>
					<ul class="f_nav">
						<li><a href="#">常见问题</a></li>
						<li><a href="#">男装</a></li>
						<li><a href="#">女装</a></li>
						<li><a href="#">配饰</a></li>
						<li><a href="#">童装</a></li>
						<li><a href="#">旗下品牌</a></li>
					</ul>	
				</div>
				<div class="col-md-3 span1_of_4">
					<h4>账户</h4>
					<ul class="f_nav">
						<li><a href="account.jsp">登录</a></li>
						<li><a href="register.jsp">申请一个新帐号</a></li>
						<li><a href="#">创造愿望列表</a></li>
						<li><a href="checkout.jsp">我的消费单品</a></li>
						<li><a href="#">品牌</a></li>
						<li><a href="#">创造愿望列表</a></li>
					</ul>				
				</div>
				<div class="col-md-3 span1_of_4">
					<h4>流行</h4>
					<ul class="f_nav">
						<li><a href="#">新品上市</a></li>
						<li><a href="#">男装</a></li>
						<li><a href="#">女装</a></li>
						<li><a href="#">配饰</a></li>
						<li><a href="#">童装</a></li>
						<li><a href="#">知名品牌</a></li>
						<li><a href="#">行业动态</a></li>
						<li><a href="#">销售</a></li>
						<li><a href="#">风格视频</a></li>
						<li><a href="#">登录</a></li>
						<li><a href="#">知名品牌</a></li>
					</ul>			
				</div>
				<div class="clearfix"></div>
				</div>
		  </div>
		  <div class="cards text-center">
				<img src="images/cards.jpg" alt="" />
		  </div>
		  <div class="copyright text-center">
				<p>© 2015 Eshop. |设计版权所有   <a href="http://w3layouts.com">  W3layouts</a></p>
		  </div>
		</div>
		</div>
</body>
</html>