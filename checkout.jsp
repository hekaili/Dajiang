
<%@page import="com.shop.model.Goods"%>
<%@page import="com.shop.model.Inventory"%>
<%@page import="com.shop.service.impl.InventoryServiceImpl"%>
<%@page import="com.shop.service.InventoryService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<title>收银台</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Eshop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
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
						<c:if test="${userInfo==null}" >
							<li>
								<a href="account.jsp"><span class="glyphicon glyphicon-user"> </span>登录</a>&nbsp;&nbsp;
								<a href="register.jsp"><span class="glyphicon glyphicon-lock"> </span>创建账户</a>
							</li>
						</c:if>
					         <!--标签 -->
						<c:if test="${userInfo!=null}" >
							<li>
								<a href="#">欢迎你:${userInfo.userEmail}</a>&nbsp;&nbsp;
								<a href="#"><span class="glyphicon glyphicon-user"> </span>个人中心</a>&nbsp;&nbsp;
								<a href="zhuxiao.jsp" style="color: red;">注销</a>
							</li>
						</c:if>			
					</ul>
				</div>
				<div class="header-right">
						<div class="cart box_1">
							<a href="checkout.jsp">
								<img src="images/bag.png" alt="">
							</a>	
							<a href="javascript:;" class="simpleCart_empty">清空购物车</a>
							<div class="clearfix"> </div>
						</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- header-section-ends -->
	<div class="inner-banner">
		<div class="container">
			<div class="banner-top inner-head">
				<nav class="navbar navbar-default" role="navigation">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">切换导航</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
	        </button>
				<div class="logo">
					<h1><a href="index.jsp"><span>E</span> -Shop</a></h1>
				</div>
	    </div>
	    <!--/.navbar-header-->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	        <ul class="nav navbar-nav">
			<li><a href="index.jsp">主页</a></li>
		        <li class="dropdown">
		            <a href="#" class="dropdown-toggle" data-toggle="dropdown">男装<b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-3">
			            <div class="row">
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>NEW IN</h6>
						            <li><a href="productsServlet">New In Clothing</a></li>
						            <li><a href="productsServlet">New In Bags</a></li>
						            <li><a href="productsServlet">New In Shoes</a></li>
						            <li><a href="productsServlet">New In Watches</a></li>
						            <li><a href="productsServlet">New In Grooming</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>CLOTHING</h6>
						            <li><a href="productsServlet">Polos & Tees</a></li>
						            <li><a href="productsServlet">Casual Shirts</a></li>
						            <li><a href="productsServlet">Casual Trousers</a></li>
						            <li><a href="productsServlet">Jeans</a></li>
						            <li><a href="productsServlet">Shorts & 3/4th</a></li>
						            <li><a href="productsServlet">Formal Shirts</a></li>
						            <li><a href="productsServlet">Formal Trousers</a></li>
						            <li><a href="productsServlet">Suits & Blazers</a></li>
						            <li><a href="productsServlet">Track Wear</a></li>
						            <li><a href="productsServlet">Inner Wear</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>WATCHES</h6>
						            <li><a href="productsServlet">Analog</a></li>
						            <li><a href="productsServlet">Chronograph</a></li>
						            <li><a href="productsServlet">Digital</a></li>
						            <li><a href="productsServlet">Watch Cases</a></li>
					            </ul>
				            </div>
							<div class="clearfix"></div>
			            </div>
		            </ul>
		        </li>
		        <li class="dropdown">
		            <a href="#" class="dropdown-toggle" data-toggle="dropdown">女装<b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-3">
			            <div class="row">
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>NEW IN</h6>
						            <li><a href="productsServlet">New In Clothing</a></li>
						            <li><a href="productsServlet">New In Bags</a></li>
						            <li><a href="productsServlet">New In Shoes</a></li>
						            <li><a href="productsServlet">New In Watches</a></li>
						            <li><a href="productsServlet">New In Beauty</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>CLOTHING</h6>
						            <li><a href="productsServlet">Polos & Tees</a></li>
						            <li><a href="productsServlet">Casual Shirts</a></li>
						            <li><a href="productsServlet">Casual Trousers</a></li>
						            <li><a href="productsServlet">Jeans</a></li>
						            <li><a href="productsServlet">Shorts & 3/4th</a></li>
						            <li><a href="productsServlet">Formal Shirts</a></li>
						            <li><a href="productsServlet">Formal Trousers</a></li>
						            <li><a href="productsServlet">Suits & Blazers</a></li>
						            <li><a href="productsServlet">Track Wear</a></li>
						            <li><a href="productsServlet">Inner Wear</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>WATCHES</h6>
						            <li><a href="productsServlet">Analog</a></li>
						            <li><a href="productsServlet">Chronograph</a></li>
						            <li><a href="productsServlet">Digital</a></li>
						            <li><a href="productsServlet">Watch Cases</a></li>
					            </ul>
				            </div>
							<div class="clearfix"></div>
			            </div>
		            </ul>
		        </li>
		        <li class="dropdown">
		        	<a href="#" class="dropdown-toggle" data-toggle="dropdown">童装<b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-2">
			            <div class="row">
				            <div class="col-sm-6">
					            <ul class="multi-column-dropdown">
									<h6>NEW IN</h6>
						            <li><a href="productsServlet">New In Boys Clothing</a></li>
						            <li><a href="productsServlet">New In Girls Clothing</a></li>
						            <li><a href="productsServlet">New In Boys Shoes</a></li>
						            <li><a href="productsServlet">New In Girls Shoes</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-6">
					             <ul class="multi-column-dropdown">
									<h6>ACCESSORIES</h6>
						            <li><a href="productsServlet">Bags</a></li>
						            <li><a href="productsServlet">Watches</a></li>
						            <li><a href="productsServlet">Sun Glasses</a></li>
						            <li><a href="productsServlet">Jewellery</a></li>
					            </ul>
				            </div>
							<div class="clearfix"></div>
			            </div>
		            </ul>
		        </li>
					<li><a href="typography.jsp">配饰</a></li>
					<li><a href="contact.jsp">联系方式</a></li>
	        </ul>
	    </div>
	    <!--/.navbar-collapse-->
	</nav>
	<!--/.navbar-->
</div>
	</div>
		</div>
		<!-- checkout -->
<div class="cart-items">
	<div class="container">
	<div class="dreamcrub">
			   	 <ul class="breadcrumbs">
                    <li class="home">
                       <a href="index.jsp" title="Go to Home Page">首页</a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li class="women">
                       Cart
                    </li>
                </ul>
                <ul class="previous">
                	<li><a href="index.jsp">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			 <h2>MY SHOPPING BAG </h2>
		<div class="cart-gd">
			<c:choose>
				<c:when test="${empty cart}">
					<div>购物车中没有商品，请在<a href="index.jsp">主页</a>选购商品</div>
				</c:when>
				<c:otherwise>
					<script>
						$(document).ready(function(c) {
							$('.simpleCart_empty').on('click', function(c){
								$('.cart-header').fadeOut('slow', function(c){
									$('.cart-header').remove();
								});
							});	
							<c:forEach var="goods" items="${cart}">
							$("#${goods.value.goods_name}").on('click', function(c){
								$("#${goods.value.goods_id}").fadeOut('slow', function(c){
									$("#${goods.value.goods_id}").remove();
								});
							});
							</c:forEach>
						});
					 </script>
					<c:forEach var="goods" items="${cart}">
					 <div id="${goods.value.goods_id}">
					 <div class="cart-header">
					 		<div class="close1" id="${goods.value.goods_name}"> </div>
							 <div class="cart-sec simpleCart_shelfItem">
									<div class="cart-item cyc">
										 <img src="${goods.value.pic_url}" class="img-responsive" alt="">
									</div>
								   <div class="cart-item-info">
									<h3><a href="#"> ${goods.value.goods_name} </a><span>颜色: ${goods.value.goods_color}</span></h3>
									<ul class="qty">
										<li><p>数量:<input type="submit" id="jia" value="+" onclick="jia()" /><input type="text" id="count" value="${goods.value.goods_count}" style="width: 30px; text-align: center;" onblur="inp()"><input type="submit" id="jian" value="-" onclick="jian()" /></p></li>
										<%-- <c:if test="${!empty in}">
											<li>库存:<span id="many">${in.stock_many}</span>件</li>
										</c:if> --%>
										
									</ul>
										 <div class="delivery">
										 <input type="hidden" id="price" value="${goods.value.goods_price}">
										 <p>价格 : $<span id="p">${goods.value.goods_price*goods.value.goods_count}</span></p>
										 <span><a href="payment.jsp?id=${goods.value.goods_id}">立即购买</a></span>
										 <div class="clearfix"></div>
							        </div>	
								   </div>
								   <div class="clearfix"></div>
							  </div>
							  <script type="text/javascript">
							  	var price=parseInt($("#price").val());
								function jia(){
									var i=parseInt($("#count").val())+1;
									if (i <= 0) {
								        i = 1;
								    }
									$("#count").val(i);
									$("#p").html(price*i);
								}
								function jian(){
									var i=parseInt($("#count").val())-1;
									if (i <= 0) {
								        i = 1;
								    }
									$("#count").val(i);
									$("#p").html(price*i);
								}
								function inp(){
									var i=parseInt($("#count").val());
									var many = parseInt($("#many").html());
									if (i <= 0) {
								        i = 1;
								    }
								    if(i>many){
								    	alert("购买数量不能超过库存量");
								    }
									$("#count").val(i);
									$("#p").html(price*i);
								}
							 </script>
						</div>
					 </div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			
		</div>
	</div>
</div>

<!-- //checkout -->	
		<div class="news-letter">
			<div class="container">
				<div class="join">
					<h6>加入我们的邮寄名单</h6>
					<div class="sub-left-right">
						<form>
							<input type="text" value="请输入您的电子邮箱" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请输入您的电子邮箱';}" />
							<input type="submit" value="订购" />
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
					<h4>店铺</h4>
					<ul class="f_nav">
						<li><a href="#">新品上市</a></li>
						<li><a href="#">男装</a></li>
						<li><a href="#">女装</a></li>
						<li><a href="#">配饰</a></li>
						<li><a href="#">童装</a></li>
						<li><a href="#">旗下品牌</a></li>
						<li><a href="#">行业动态</a></li>
						<li><a href="#">销售</a></li>
						<li><a href="#">有趣的视频</a></li>
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
						<li><a href="register.jsp">创建一个新帐号</a></li>
						<li><a href="#">创建收藏</a></li>
						<li><a href="checkout.jsp">真正的消费单品</a></li>
						<li><a href="#">旗下品牌</a></li>
						<li><a href="#">创建收藏</a></li>
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
						<li><a href="#">旗下品牌</a></li>
						<li><a href="#">行业动态</a></li>
						<li><a href="#">销售</a></li>
						<li><a href="#">有趣的视频</a></li>
						<li><a href="#">男装</a></li>
						<li><a href="#">女装</a></li>
					</ul>			
				</div>
				<div class="clearfix"></div>
				</div>
		  </div>
		  <div class="cards text-center">
				<img src="images/cards.jpg" alt="" />
		  </div>
		  <div class="copyright text-center">
				<p>© 2018 第五组. 版权所有 | 设计团队  第五项目小组</a></p>
		  </div>
		</div>
		</div>
</body>
</html>