<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>Eshop a Flat E-Commerce Bootstrap Responsive Website Template | Single :: w3layouts</title>
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
								<h3> <span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)<img src="images/bag.png" alt=""></h3>
							</a>	
							<p><a href="javascript:;" class="simpleCart_empty">清空购物车</a></p>
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
			<li><a href="index.jsp">首页</a></li>
		        <li class="dropdown">
		            <a href="#" class="dropdown-toggle" data-toggle="dropdown">男装 <b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-3">
			            <div class="row">
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>新品</h6>
												<li><a href="productsServlet">新品服装</a></li>
												<li><a href="productsServlet">新品包</a></li>
												<li><a href="productsServlet">新品鞋子</a></li>
												<li><a href="productsServlet">新品手表</a></li>
												<li><a href="productsServlet">新品化妆品</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
									<h6>服装</h6>
												<li><a href="productsServlet">马球衬衫 & 短袖T恤</a></li>
												<li><a href="productsServlet">休闲衬衫</a></li>
												<li><a href="productsServlet">休闲长裤</a></li>
												<li><a href="productsServlet">牛仔裤</a></li>
												<li><a href="productsServlet">短裤 & 3/4厚度</a></li>
												<li><a href="productsServlet">正衫</a></li>
												<li><a href="productsServlet">正裤</a></li>
												<li><a href="productsServlet">套装 & 西装</a></li>
												<li><a href="productsServlet">明星同款</a></li>
												<li><a href="productsServlet">内衣</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
									<h6>手表</h6>
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
		            <a href="#" class="dropdown-toggle" data-toggle="dropdown">女装 <b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-3">
			            <div class="row">
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>新品</h6>
												<li><a href="productsServlet">新品服装</a></li>
												<li><a href="productsServlet">新品包</a></li>
												<li><a href="productsServlet">新品鞋子</a></li>
												<li><a href="productsServlet">新品手表</a></li>
												<li><a href="productsServlet">新品化妆品</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
									<h6>服装</h6>
												<li><a href="productsServlet">马球衬衫 & 短袖T恤</a></li>
												<li><a href="productsServlet">休闲衬衫</a></li>
												<li><a href="productsServlet">休闲长裤</a></li>
												<li><a href="productsServlet">牛仔裤</a></li>
												<li><a href="productsServlet">短裤 & 3/4厚度</a></li>
												<li><a href="productsServlet">正衫</a></li>
												<li><a href="productsServlet">正裤</a></li>
												<li><a href="productsServlet">套装 & 西装</a></li>
												<li><a href="productsServlet">明星同款</a></li>
												<li><a href="productsServlet">内衣</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
									<h6>手表</h6>
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
		        	<a href="#" class="dropdown-toggle" data-toggle="dropdown">童装 <b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-2">
			            <div class="row">
				            <div class="col-sm-6">
					            <ul class="multi-column-dropdown">
									<h6>新品</h6>
												<li><a href="productsServlet">儿童男装</a></li>
												<li><a href="productsServlet">儿童女装</a></li>
												<li><a href="productsServlet">儿童男鞋</a></li>
												<li><a href="productsServlet">儿童女鞋</a></li>
											</ul>
										</div>
										<div class="col-sm-6">
											<ul class="multi-column-dropdown">
									<h6>配饰</h6>
												<li><a href="productsServlet">包包</a></li>
												<li><a href="productsServlet">手表</a></li>
												<li><a href="productsServlet">太阳眼镜</a></li>
												<li><a href="productsServlet">首饰</a></li>
					            </ul>
				            </div>
							<div class="clearfix"></div>
			            </div>
		            </ul>
		        </li>
					<li><a href="typography.jsp">错误</a></li>
					<li><a href="contact.jsp">联系方式</a></li>
	        </ul>
	    </div>
	    <!--/.navbar-collapse-->
	</nav>
	<!--/.navbar-->
</div>
	</div>
		</div>
		<!-- content-section-starts -->
	<div class="container">
	   <div class="products-page">
			<div class="products">
				<div class="product-listy">
					<h2>产品介绍</h2>
					<ul class="product-list">
						<li><a href="">新产品</a></li>
						<li><a href="">旧产品</a></li>
						<li><a href="">恤衫</a></li>
						<li><a href="">裤子</a></li>
						<li><a href="">连衣裙</a></li>
						<li><a href="">短裤</a></li>
						<li><a href="#">衬衫</a></li>
						<li><a href="register.jsp">注册</a></li>
					</ul>
				</div>
				<div class="latest-bis">
					<img src="images/l4.jpg" class="img-responsive" alt="" />
					<div class="offer">
						<p>40%</p>
						<small>最高价</small>
					</div>
				</div> 	
				<div class="tags">
				    	<h4 class="tag_head">标签小部件</h4>
				         <ul class="tags_links">
							<li><a href="#">冲浪</a></li>
							<li><a href="#">特大号</a></li>
							<li><a href="#">诈欺</a></li>
							<li><a href="#">内容</a></li>
							<li><a href="#">男装</a></li>
							<li><a href="#">女装</a></li>
							<li><a href="#">公司设备</a></li>
							<li><a href="#">精选</a></li>
							<li><a href="#">配饰</a></li>
							<li><a href="#">男装</a></li>
							<li><a href="#">服装</a></li>
							<li><a href="#">特大号</a></li>
							<li><a href="#">诈欺</a></li>
							<li><a href="#">内容</a></li>
							<li><a href="#">回应</a></li>
					        <li><a href="#">女装</a></li>
							<li><a href="#">公司设备</a></li>
						</ul>
					
				     </div>

			</div>
			<div class="new-product">
				<div class="col-md-5 zoom-grid">
					<div class="flexslider">
						<ul class="slides">
							<li data-thumb="images/si.jpg">
								<div class="thumb-image"> <img src="images/si.jpg" data-imagezoom="true" class="img-responsive" alt="" /> </div>
							</li>
							<li data-thumb="images/si1.jpg">
								<div class="thumb-image"> <img src="images/si1.jpg" data-imagezoom="true" class="img-responsive" alt="" /> </div>
							</li>
							<li data-thumb="images/si2.jpg">
							<div class="thumb-image"> <img src="images/si2.jpg" data-imagezoom="true" class="img-responsive" alt="" /> </div>
							</li> 
						</ul>
					</div>
				</div>
				<div class="col-md-7 dress-info">
					<div class="dress-name">
						<h3>LOREM IPSUM衣服</h3>
						<span>$459.00</span>
						<div class="clearfix"></div>
						<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</p>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever</p>
					</div>
					<div class="span span1">
						<p class="left">面料来源</p>
						<p class="right">日本</p>
						<div class="clearfix"></div>
					</div>
					<div class="span span2">
						<p class="left">原产国</p>
						<p class="right">中国</p>
						<div class="clearfix"></div>
					</div>
					<div class="span span3">
						<p class="left">颜色</p>
						<p class="right">白色</p>
						<div class="clearfix"></div>
					</div>
					<div class="purchase">
						<a href="payment.jsp?id=9">立即购买</a>
						<div class="social-icons">
							<ul>
								<li><a class="facebook1" href="#"></a></li>
								<li><a class="twitter1" href="#"></a></li>
								<li><a class="googleplus1" href="#"></a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
				<script src="js/imagezoom.js"></script>
					<!-- FlexSlider -->
					<script defer src="js/jquery.flexslider.js"></script>
					<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
						  $('.flexslider').flexslider({
							animation: "slide",
							controlNav: "thumbnails"
						  });
						});
					</script>
				</div>
				<div class="clearfix"></div>
					<div class="reviews-tabs">
      <!-- Main component for a primary marketing message or call to action -->
      <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
        <li class="test-class active"><a class="deco-none misc-class" href="#how-to"> 更多信息</a></li>
        <li class="test-class"><a href="#features">技术参数</a></li>
        <li class="test-class"><a class="deco-none" href="#source">评论 (7)</a></li>
      </ul>

      <div class="tab-content responsive hidden-xs hidden-sm">
        <div class="tab-pane active" id="how-to">
		 <p class="tab-text">Maecenas mauris velit, consequat sit amet feugiat rit, elit vitaeert scelerisque elementum, turpis nisl accumsan ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. and scrambled it to make a type specimen book. It has survived Auction your website on Flippa and you'll get the best price from serious buyers, dedicated support and a much better deal than you'll find with any website broker. Sell your site today I need a twitter bootstrap 3.0 theme for the full-calendar plugin. it would be great if the theme includes the add event; remove event, show event details. this must be RESPONSIVE and works on mobile devices. Also, I've seen so many bootstrap themes that comes up with the fullcalendar plugin. However these . </p>    
        </div>
        <div class="tab-pane" id="features">
          <p class="tab-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor. Integer laoreet placerat suscipit. Sed sodales scelerisque commodo. Nam porta cursus lectus. Proin nunc erat, gravida a facilisis quis, ornare id lectus. Proin consectetur nibh quis urna gravida mollis.This tab has icon in consectetur adipiscing eliconse consectetur adipiscing elit. Vestibulum nibh urna, ctetur adipiscing elit. Vestibulum nibh urna, t.consectetur adipiscing elit. Vestibulum nibh urna,  Vestibulum nibh urna,it.</p>
		  <p class="tab-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
		</div>
        <div class="tab-pane" id="source">
		  <div class="response">
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#">
									<img class="media-object" src="images/icon1.png" alt="" />
								</a>
								<h5><a href="#">用户名</a></h5>
							</div>
							<div class="media-body response-text-right">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<ul>
									<li>MARCH 21, 2015</li>
									<li><a href="single.jsp">回复</a></li>
								</ul>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#">
									<img class="media-object" src="images/icon1.png" alt="" />
								</a>
								<h5><a href="#">用户名</a></h5>
							</div>
							<div class="media-body response-text-right">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<ul>
									<li>MARCH 26, 2054</li>
									<li><a href="single.jsp">回复</a></li>
								</ul>		
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#">
									<img class="media-object" src="images/icon1.png" alt="" />
								</a>
								<h5><a href="#">用户名</a></h5>
							</div>
							<div class="media-body response-text-right">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<ul>
									<li>MAY 25, 2015</li>
									<li><a href="single.jsp">回复</a></li>
								</ul>		
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#">
									<img class="media-object" src="images/icon1.png" alt="" />
								</a>
								<h5><a href="#">用户名</a></h5>
							</div>
							<div class="media-body response-text-right">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<ul>
									<li>FEB 13, 2015</li>
									<li><a href="single.jsp">回复</a></li>
								</ul>		
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#">
									<img class="media-object" src="images/icon1.png" alt="" />
								</a>
								<h5><a href="#">用户名</a></h5>
							</div>
							<div class="media-body response-text-right">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<ul>
									<li>JAN 28, 2015</li>
									<li><a href="single.jsp">回复</a></li>
								</ul>		
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#">
									<img class="media-object" src="images/icon1.png" alt="" />
								</a>
								<h5><a href="#">用户名</a></h5>
							</div>
							<div class="media-body response-text-right">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<ul>
									<li>APR 18, 2015</li>
									<li><a href="single.jsp">回复</a></li>
								</ul>		
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#">
									<img class="media-object" src="images/icon1.png" alt="" />
								</a>
								<h5><a href="#">用户名</a></h5>
							</div>
							<div class="media-body response-text-right">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, 
									sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<ul>
									<li>DEC 25, 2014</li>
									<li><a href="single.jsp">回复</a></li>
								</ul>		
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
        </div>
      </div>		
	</div>

			</div>
			<div class="clearfix"></div>
			</div>
   </div>
   <div class="other-products products-grid">
		<div class="container">
			<header>
				<h3 class="like text-center">相关产品</h3>   
			</header>			
					<div class="col-md-4 product simpleCart_shelfItem text-center">
						<a href="single.jsp"><img src="images/p1.jpg" alt="" /></a>
						<div class="mask">
							<a href="single.jsp">快速查看</a>
						</div>
						<a class="product_name" href="single.jsp">Sed ut perspiciatis</a>
						<p><a class="item_add" href="#"><i></i> <span class="item_price">$329</span></a></p>
					</div>
					<div class="col-md-4 product simpleCart_shelfItem text-center">
						<a href="single.jsp"><img src="images/p2.jpg" alt="" /></a>
						<div class="mask">
							<a href="single.jsp">快速查看</a>
						</div>
						<a class="product_name" href="single.jsp">great explorer</a>
						<p><a class="item_add" href="#"><i></i> <span class="item_price">$599.8</span></a></p>
					</div>
					<div class="col-md-4 product simpleCart_shelfItem text-center">
						<a href="single.jsp"><img src="images/p3.jpg" alt="" /></a>
						<div class="mask">
							<a href="single.jsp">快速查看</a>
						</div>
						<a class="product_name" href="single.jsp">similique sunt</a>
						<p><a class="item_add" href="#"><i></i> <span class="item_price">$359.6</span></a></p>
					</div>
					<div class="clearfix"></div>
				   </div>
				   </div>
   <!-- content-section-ends -->
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
 <script src="js/responsive-tabs.js"></script>
    <script type="text/javascript">
      $( '#myTab a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
      } );

      $( '#moreTabs a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
      } );

      ( function( $ ) {
          // Test for making sure event are maintained
          $( '.js-alert-test' ).click( function () {
            alert( 'Button Clicked: Event was maintained' );
          } );
          fakewaffle.responsiveTabs( [ 'xs', 'sm' ] );
      } )( jQuery );

    </script>

</body>
</html>