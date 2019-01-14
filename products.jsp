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
<title>Eshop a Flat E-Commerce Bootstrap Responsive Website Template | Products :: w3layouts</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/component.css" rel='stylesheet' type='text/css' />
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
		        <span class="sr-only">轮播导航</span>
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
						            <li><a href="productsServlet">服装</a></li>
						            <li><a href="productsServlet">包</a></li>
						            <li><a href="productsServlet">鞋</a></li>
						            <li><a href="productsServlet">手表</a></li>
						            <li><a href="productsServlet">化妆品</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>服装</h6>
						            <li><a href="productsServlet">衬衫 & T恤</a></li>
						            <li><a href="productsServlet">休闲衬衫</a></li>
						            <li><a href="productsServlet">休闲裤</a></li>
						            <li><a href="productsServlet">牛仔裤</a></li>
						            <li><a href="productsServlet">短裤 & 3/4厚度</a></li>
						            <li><a href="productsServlet">正衫</a></li>
						            <li><a href="productsServlet">正裤</a></li>
						            <li><a href="productsServlet">套装 & 开拓者</a></li>
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
						            <li><a href="productsServlet">服装</a></li>
						            <li><a href="productsServlet">包</a></li>
						            <li><a href="productsServlet">鞋</a></li>
						            <li><a href="productsServlet">手表</a></li>
						            <li><a href="productsServlet">化妆品</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>服装</h6>
						            <li><a href="productsServlet">衬衫 & T恤</a></li>
						            <li><a href="productsServlet">休闲衬衫</a></li>
						            <li><a href="productsServlet">休闲裤</a></li>
						            <li><a href="productsServlet">牛仔裤</a></li>
						            <li><a href="productsServlet">短裤 & 3/4厚度</a></li>
						            <li><a href="productsServlet">正衫</a></li>
						            <li><a href="productsServlet">正裤</a></li>
						            <li><a href="productsServlet">套装 & 开拓者</a></li>
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
				<div class="new-product-top">
					<ul class="product-top-list">
						<li><a href="index.jsp">首页</a>&nbsp;<span>&gt;</span></li>
						<li><span class="act">促销区</span>&nbsp;</li>
					</ul>
					<p class="back"><a href="index.jsp">返回上一页</a></p>
					<div class="clearfix"></div>
				</div>
				<div class="mens-toolbar">
                 <div class="sort">
               	   <div class="sort-by">
			            <label>排序方式</label>
			            <select>
			                            <option value="">
			                    位置                </option>
			                            <option value="">
			                    姓名                </option>
			                            <option value="">
			                    价格                </option>
			            </select>
			            <a href=""><img src="images/arrow2.gif" alt="" class="v-middle"></a>
	                   </div>
	    		     </div>
		    	        <ul class="women_pagenation">
					     <li>页:</li>
					     <li class="active"><a href="#">1</a></li>
					     <li><a href="#">2</a></li>
				  	    </ul>
	               		 <div class="clearfix"></div>		
			        </div>
			        <div id="cbp-vm" class="cbp-vm-switcher cbp-vm-view-grid">
					<div class="cbp-vm-options">
						<a href="#" class="cbp-vm-icon cbp-vm-grid cbp-vm-selected" data-view="cbp-vm-view-grid" title="grid">网格布局</a>
						<a href="#" class="cbp-vm-icon cbp-vm-list" data-view="cbp-vm-view-list" title="list">列表视图</a>
					</div>
					<div class="pages">   
        	 <div class="limiter visible-desktop">
               <label>显示</label>
                  <select>
                            <option value="" selected="selected">
                    6               </option>
                            <option value="">
                    9                </option>
                  </select> 每页        
               </div>
       	   </div>
					<div class="clearfix"></div>
					<ul>
						<c:if test="${!empty list}">
							<c:forEach items="${list}" var="goods" end="5">
								<li>
									<a class="cbp-vm-image" href="single.jsp">
									<div class="simpleCart_shelfItem">
									 <div class="view view-first">
							   		  <div class="inner_content clearfix">
										<div class="product_image">
											<img src="${goods.pic_url}" class="img-responsive" alt=""/>
											<div class="mask">
					                       		<div class="info">快速查看</div>
							                  </div>
											<div class="product_container">
											   <div class="cart-left">
												 <p class="title">${goods.goods_name}</p>
											   </div>
											   <div class="pricey"><span class="item_price">$ ${goods.goods_price}</span></div>
											   <div class="clearfix"></div>
										     </div>		
										  </div>
					                     </div>
				                      </div>
				                      </div>
				                    </a>
									<div class="cbp-vm-details">
										Beet green onion, sweet pepper, salted mung bean, beet root, peanuts.
									</div>
									<c:if test="${empty userInfo}">
										<a class="cbp-vm-icon cbp-vm-add item_add" id="jiaru" href="account.jsp">加入购物车</a>
									</c:if>
									<script type="text/javascript">
										$("#jiaru").click(function(){
											alert("请先登录");
										});
									</script>
									<c:if test="${!empty userInfo}">
										<a class="cbp-vm-icon cbp-vm-add item_add" href="checkoutServlet?id=${goods.goods_id}">加入购物车</a>
									</c:if>
									
								</li>
							</c:forEach>
						</c:if>
					</ul>	
					
				</div>
				<script src="js/cbpViewModeSwitch.js" type="text/javascript"></script>
                <script src="js/classie.js" type="text/javascript"></script>
                
			</div>
			<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
   </div>
   <!-- content-section-ends -->
		<div class="other-products">
		<div class="container">
			<h3 class="like text-center">特色精选</h3>        			
				     <ul id="flexiselDemo3">
						<li><a href="single.jsp"><img src="images/l1.jpg" class="img-responsive"/></a>
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.jsp">Perfectly simple</a>
							<p><a class="item_add" href="#"><i></i> <span class=" item_price">$759</span></a></p>
							</div>
						</li>
						<li><a href="single.jsp"><img src="images/l2.jpg" class="img-responsive"/></a>						
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.jsp">Praising pain</a>
							<p><a class="item_add" href="#"><i></i> <span class=" item_price">$699</span></a></p>
							</div>
						</li>
						<li><a href="single.jsp"><img src="images/l3.jpg" class="img-responsive"/></a>
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.jsp">Neque porro</a>
							<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
							</div>
						</li>
						<li><a href="single.jsp"><img src="images/l4.jpg" class="img-responsive"/></a>
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.jsp">Equal blame</a>
							<p><a class="item_add" href="#"><i></i> <span class=" item_price">$499</span></a></p>
							</div>
						</li>
						<li><a href="single.html"><img src="images/l5.jpg" class="img-responsive"/></a>
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.html">Perfectly simple</a>
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
						<li><a href="#">品牌</a></li>
						<li><a href="#">行业动态</a></li>
						<li><a href="#">销售</a></li>
						<li><a href="#">风格视频</a></li>
						<li><a href="#">登录</a></li>
						<li><a href="#">品牌</a></li>
					</ul>			
				</div>
				<div class="clearfix"></div>
				</div>
		  </div>
		  <div class="cards text-center">
				<img src="images/cards.jpg" alt="" />
		  </div>
		  <div class="copyright text-center">
				<p>© 2015 Eshop.|设计版权所有   <a href="http://w3layouts.com">  W3layouts</a></p>
		  </div>
		</div>
		</div>
</body>
</html>