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
<title>首页</title>
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
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery-2.2.3.min.js"></script>
  <link rel="stylesheet" href="../js/bootstrap.css" type="text/css">
  </link><script type="text/javascript" src="../js/bootstrap.js"></script>
<style>
	#submit{
		border:1px solid white;
		background-color:white;
		border-radius: 20px;
        line-height: 20px;
	}
	#submit:hover,#customer_three:hover{
		color:#FFF;/*白色*/
		background-color: #ff6700;/*橘色*/
		-moz-transition: all .9s;   /*兼容 火狐 浏览器  渐变色*/ 
	}
	#customer_three{
		font-size:15px;
		margin-left:603px;
		height:23px;
		border:none;
		border-radius: 20px;
        line-height: 20px;
	} 
        #customer_two:hover{
        color: white;
		background-color: #ff6700;/*橘色*/
		-moz-transition: all .9s;   /*兼容 火狐 浏览器  渐变色*/ 
		}
       #customer_one{
      		background-color:#FC9;
      		border:2px solid #FC6;
       		width:500px;
        	height:80px;
        	font-size:20px;
        	font-family:等线;
        	font-weight: bold;
       }
        #light{
        	text-align:center;
        	background-image:url("../images/1.jpg");
        	background-repeat: no-repeat;
        	background-size:100%;
        	background-position:center;
        }
        #char{
        	background-color:#FC6;
            top: 17%; 
            left: 7%; 
       		border:2px solid #FC6;
        	width:500px;
        	height:280px;
        	overflow-y:auto;
        }
        #char_one{
       	 	margin-left:500px;
        	margin-top:-360px;
        	border:2px solid #FC6;
        	width:200px;
        	height:360px;
        }
        #char_two{
        	width:198px;
        	height:300px;
        }
        #char_three{
        	background-color:#FFF;
        	width:198px;
        	height:60px;
        	font-family:等线;
        	font-weight: bold;
        	text-align:center;
        	font-size:20px;
        }
       #customer{
      		background-color:#F93;
      		border:2px solid #FC6;
      		width:700px;
        	height:100px;
        	resize:none;
       }
       #font{
       		font-size:13px;
       		font-family:等线;
        	font-weight: bold;
       }
       #userchar{
       		border:2px solid #FFF;
       		background-color:#FF3;
       		
        	height:20px;
        	margin-left:180px;
        	
        	border-radius: 20px;
        	line-height: 20px;
       }
       #userchar_one{
       		border:2px solid #FFF;
       		background-color:#FF3;
			border-radius: 20px;
        	line-height: 20px;
        	text-align:center;
       }
       #myModal_one{
        	width:700px;
       }
    </style> 
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
						<!-- <li><a href="account.jsp"><span class="glyphicon glyphicon-user"> </span>登录</a></li>
						<li><a href="register.jsp"><span class="glyphicon glyphicon-lock"> </span>创建账户</a></li> -->
					</ul>
				</div>
				
				<!---->
			
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
			<div class="banner-top">
		<div class="container">
				<nav class="navbar navbar-default" role="navigation">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
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
					<li>
					<!-- 按钮：用于打开模态框 -->
    					<a href = "javascript:void(0)"  data-toggle="modal" data-target="#myModal" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">客服聊天</a>
  					</li>
					<li><a href="contact.jsp">联系方式</a></li>
	        </ul>
	    </div>
	    <!--/.navbar-collapse-->
	</nav>
	<!--/.navbar-->
</div>
</div>
	<div class="banner">
		<div class="container">
<div class="banner-bottom">
	<div class="banner-bottom-left">
		<h2>B<br>U<br>Y</h2>
	</div>
	<div class="banner-bottom-right">
		<div  class="callbacks_container">
					<ul class="rslides" id="slider4">
					<li>
								<div class="banner-info">
									<h3>Smart But Casual</h3>
									<p>Start your shopping here...</p>
								</div>
							</li>
							<li>
								<div class="banner-info">
								   <h3>Shop Online</h3>
									<p>Start your shopping here...</p>
								</div>
							</li>
							<li>
								<div class="banner-info">
								  <h3>Pack your Bag</h3>
									<p>Start your shopping here...</p>
								</div>								
							</li>
						</ul>
					</div>
					<!--banner-->
	  			<script src="js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager:true,
			        nav:false,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
	</div>
	<div class="clearfix"> </div>
</div>
	<div class="shop">
		<a href="single.jsp">SHOP COLLECTION NOW</a>
	</div>
	</div>
		</div>
		<!-- content-section-starts-here -->
		<div class="container">
			<div class="main-content">
				<div class="online-strip">
					<div class="col-md-4 follow-us">
						<h3>follow us : <a class="twitter" href="#"></a><a class="facebook" href="#"></a></h3>
					</div>
					<div class="col-md-4 shipping-grid">
						<div class="shipping">
							<img src="images/shipping.png" alt="" />
						</div>
						<div class="shipping-text">
							<h3>Free Shipping</h3>
							<p>on orders over $ 199</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-4 online-order">
						<p>Order online</p>
						<h3>Tel:999 4567 8902</h3>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="products-grid">
				<header>
					<h3 class="head text-center">Latest Products</h3>
				</header>
					<div class="col-md-4 product simpleCart_shelfItem text-center">
						<a href="single.jsp"><img src="images/p1.jpg" alt="" /></a>
						<div class="mask">
							<a href="single.jsp">Quick View</a>
						</div>
						<a class="product_name" href="single.jsp">Sed ut perspiciatis</a>
						<p><a class="item_add" href="#"><i></i> <span class="item_price">$329</span></a></p>
					</div>
					<div class="col-md-4 product simpleCart_shelfItem text-center">
						<a href="single.jsp"><img src="images/p2.jpg" alt="" /></a>
						<div class="mask">
							<a href="single.jsp">Quick View</a>
						</div>
						<a class="product_name" href="single.jsp">great explorer</a>
						<p><a class="item_add" href="#"><i></i> <span class="item_price">$599.8</span></a></p>
					</div>
					<div class="col-md-4 product simpleCart_shelfItem text-center">
						<a href="single.jsp"><img src="images/p3.jpg" alt="" /></a>
						<div class="mask">
							<a href="single.jsp">Quick View</a>
						</div>
						<a class="product_name" href="single.jsp">similique sunt</a>
						<p><a class="item_add" href="#"><i></i> <span class="item_price">$359.6</span></a></p>
					</div>
					<div class="col-md-4 product simpleCart_shelfItem text-center">
						<a href="single.jsp"><img src="images/p4.jpg" alt="" /></a>
						<div class="mask">
							<a href="single.jsp">Quick View</a>
						</div>
						<a class="product_name" href="single.jsp">shrinking </a>
						<p><a class="item_add" href="#"><i></i> <span class="item_price">$649.99</span></a></p>
					</div>
					<div class="col-md-4 product simpleCart_shelfItem text-center">
						<a href="single.jsp"><img src="images/p5.jpg" alt="" /></a>
						<div class="mask">
							<a href="single.jsp">Quick View</a>
						</div>
						<a class="product_name" href="single.jsp">perfectly simple</a>
						<p><a class="item_add" href="#"><i></i> <span class="item_price">$750</span></a></p>
					</div>
					<div class="col-md-4 product simpleCart_shelfItem text-center">
						<a href="single.jsp"><img src="images/p6.jpg" alt="" /></a>
						<div class="mask">
							<a href="single.hjsp">Quick View</a>
						</div>
						<a class="product_name" href="single.jsp">equal blame</a>
						<p><a class="item_add" href="#"><i></i> <span class="item_price">$295.59</span></a></p>
					</div>
					<div class="col-md-4 product simpleCart_shelfItem text-center">
						<a href="single.jsp"><img src="images/p7.jpg" alt="" /></a>
						<div class="mask">
							<a href="single.jsp">Quick View</a>
						</div>
						<a class="product_name" href="single.jsp">Neque porro</a>
						<p><a class="item_add" href="#"><i></i> <span class="item_price">$380</span></a></p>
					</div>
					<div class="col-md-4 product simpleCart_shelfItem text-center">
						<a href="single.jsp"><img src="images/p8.jpg" alt="" /></a>
						<div class="mask">
							<a href="single.jsp">Quick View</a>
						</div>
						<a class="product_name" href="single.jsp">perfectly simple</a>
						<p><a class="item_add" href="#"><i></i> <span class="item_price">$540.6</span></a></p>
					</div>
					<div class="col-md-4 product simpleCart_shelfItem text-center">
						<a href="single.jsp"><img src="images/p9.jpg" alt="" /></a>
						<div class="mask">
							<a href="single.jsp">Quick View</a>
						</div>
						<a class="product_name" href="single.jsp">praising pain</a>
						<p><a class="item_add" href="#"><i></i> <span class="item_price">$229.5</span></a></p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>

		</div>
		<div class="other-products">
		<div class="container">
			<h3 class="like text-center">Featured Collection</h3>        			
				     <ul id="flexiselDemo3">
						<li><a href="single.jsp"><img src="images/l1.jpg" class="img-responsive" alt="" /></a>
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.jsp">perfectly simple</a>
							<p><a class="item_add" href="#"><i></i> <span class=" item_price">$759</span></a></p>
							</div>
						</li>
						<li><a href="single.jsp"><img src="images/l2.jpg" class="img-responsive" alt="" /></a>						
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.jsp">praising pain</a>
							<p><a class="item_add" href="#"><i></i> <span class=" item_price">$699</span></a></p>
							</div>
						</li>
						<li><a href="single.jsp"><img src="images/l3.jpg" class="img-responsive" alt="" /></a>
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.jsp">Neque porro</a>
							<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
							</div>
						</li>
						<li><a href="single.jsp"><img src="images/l4.jpg" class="img-responsive" alt="" /></a>
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.jsp">equal blame</a>
							<p><a class="item_add" href="#"><i></i> <span class=" item_price">$499</span></a></p>
							</div>
						</li>
						<li><a href="single.jsp"><img src="images/l5.jpg" class="img-responsive" alt="" /></a>
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.jsp">perfectly simple</a>
							<p><a class="item_add" href="#"><i></i> <span class=" item_price">$649</span></a></p>
							</div>
						</li>
				     </ul>
				    <script type="text/javascript">
					 $(window).load(function() {
						$("#flexiselDemo3").flexisel({
							visibleItems: 4,
							animationSpeed: 1000,
							autoPlay: true,
							autoPlaySpeed: 3000,    		
							pauseOnHover: true,
							enableResponsiveBreakpoints: true,
					    	responsiveBreakpoints: { 
					    		portrait: { 
					    			changePoint:480,
					    			visibleItems: 1
					    		}, 
					    		landscape: { 
					    			changePoint:640,
					    			visibleItems: 2
					    		},
					    		tablet: { 
					    			changePoint:768,
					    			visibleItems: 3
					    		}
					    	}
					    });
					    
					});
				   </script>
				   <script type="text/javascript" src="js/jquery.flexisel.js"></script>
				   </div>
				   </div>
		<!-- content-section-ends-here -->
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
			<div class="container">
  <!-- 模态框 -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog" id="myModal_one">
        <!-- 模态框头部 -->
        <div class="modal-header" id="customer_one">
         <div id = "font">
			客服小陈001-冷态</br>
			我们用热情的服务，真诚的心，用心为您安排每一个订单，最快1天配送到家！速度，质量，是我们发展之本，真心期待您的光临！
		</div>  
        </div>
        <!-- 模态框主体 -->
		    <div id = "char"></div>
		    <div id = "char_one">
		    <img src="images/1544242989914.jpeg" id="char_two"></img>
		    <div id="char_three">客服小陈001</br>为您服务</div>
		    </div>
		    	
       		<div id="input">
		    	<textarea name = "userchat" id = "customer"></textarea>
		    	<input type = "button"  name = "submit" id = "submit"  value="发送" onClick="chen()">
		    	<input type = "button"  data-dismiss="modal" value="关闭" id="customer_three">
       		</div>	    
    </div>
  </div>
</div>
				
				<!---->
</body>
</html>
<script type="text/javascript">
    	$(function(){
    		//调取数据库里的内容
    		initChar();
    		var charnext;
    		//失去焦点事件（判断敏感词）
    		$("#customer").blur(function(){
	    		 //接受参数
	    		 charnext = $("#customer").val();
	    		 //专门判断字符是否是违规字符
	    		 charecord(charnext);
    		});
    		//点击事件（放送聊天内容）
    		$("#submit").click(function(){
    		 //专门判断字符是否是违规字符
	    	 charnext = $("#customer").val();
    		 //判断用户输入内容不能为空
    		 if(charnext == ""){
    		 	//为空的话禁用发送按钮并在网页上提醒
    		 	$("#customer").val("输入内容不能为空");
    		 	$("#customer").css("color","#FF0");
    		 	$("#submit").attr("disabled","disabled");
    		 	//当你再次点击输入框的时候
    		 	$("#userchat").click(function(){
	    		 	//清除输入框的内容
			  		$("#customer").val("");
			  		//解除禁用事件
		  			$("#submit").removeAttr("disabled");
    		 	});
    		 }else{
    		 //不为空的情况下
	  			//清除输入框的内容
	  			$("#customer").val("");
	  			//将输入框的内容（跳转到action）
	    		chatText();
    		 }
    		});
    		//判断用户是否发送信息
    		judge();
    	});
    	function initChar(){
    		$.ajax({
    			type:"post",
    			url:"char_init.action",
    			dataType:"json",
    			success:function(result){
	    			$.each(result,function(i,o){
    					if(o.identity != 0){
    						$("#char").append(
    						"<input type = 'text' style = 'visibility:hidden' readonly><span id = 'userchar'>"+o.charnext+"</span></br>"
    						);
    					}else{
    						$("#char").append(
    						"<span id = 'userchar_one'>"+o.charnext+"</span><input type = 'text' style = 'visibility:hidden' readonly></br>"
    						);
    					}
	    			});
    			}
    		});
    	}
    	//专门判断字符是否是违规字符
	    function charecord(charnext){
	    	$.ajax({
    			type:"post",
    			url:"char_charecord.action",
    			data:"charnext="+charnext,
    			dataType:"json",
    			success:function(result){
    			}
    		});
	    }
    	function chatText(){
    	//userCharNext是用户输入的内容，返回给action并在action里面存入数据库
    		$.ajax({
    			type:"post",
    			url:"char_userchar.action",
    			data:"identity=1",
    			dataType:"json",
    			success:function(result){
	    		 	//在用户内容显示页面拼接上输入的内容
		   			$("#char").append(
		   				"<input type = 'text' style = 'visibility:hidden' readonly><span id = 'userchar'>"+result+"</span></br>"
		   			);
    			}
    		});
    	}
    	//判断用户是否发送了消息
    	function judge(){
    		$.ajax({
    			type:"post",
    			url:"char_init.action",
    			dataType:"json",
    			success:function(result){
    				$.each(result,function(i,o){
    					if(o.identity == 0){
    						if(o.send == "true"){
    							initChar();
    							//刷新页面后修改客服发送状态
    							refresh();
    						}
    					}
    				});
    			}
    		});
    		//每秒刷新一下这个方法判断发送状态
    		var getMs=setTimeout("judge()",1000);
    	}
    	//修改客服发送状态
    	function refresh(){
    		$.ajax({
    			type:"post",
    			url:"char_Charrefresh.action",
    			data:"identity=0&send=false",
    			dataType:"json",
    			success:function(result){
    			}
    		});
    	}
    	function chen(){
				/*仅仅IE浏览器支持*/
			var text1 = window.open("kefu/Customer.jsp","","width=510,height=380,status=yes,toolbar=no,menubar=no,location=no,top=300px,left=500px");
			window.close(); 
   				child.close();
			};
    </script>