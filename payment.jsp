<%@page import="com.shop.model.Goods"%>
<%@page import="com.shop.service.impl.GoodsServiceImpl"%>
<%@page import="com.shop.service.GoodsService"%>
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
<title>付款</title>
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
                       付款
                    </li>
                </ul>
                <ul class="previous">
                	<li><a href="index.jsp">返回主页</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
		<h2>付款</h2>
		<%
			GoodsService goodsService = new GoodsServiceImpl();
			String id = request.getParameter("id");
			Integer i = Integer.valueOf(id);
			Goods goods = goodsService.findGoods(i);
		 %>
		<div class="registration-grids">
			<div class="reg-form">
				<div class="reg">
					 <p>欢迎您，请输入以下详细信息继续。</p>
					 <p>如你曾在本公司登记，<a href="#">单击此处</a></p>
					 <form action="paymenyServlet?id=<%=i %>" method="post">
						 <ul>
							 <li class="text-info">收货人: </li>
							 <li><input type="text" id="name" name="name" value="" placeholder=""></li>
							 <li style="margin-left: 42%;height:20px;" id="info1"></li>
						 </ul>
						 <ul>
							 <li class="text-info">手机号码: </li>
							 <li><input type="text" id="phone" name="phone" value=""></li>
							 <li style="margin-left: 42%;height:20px;" id="info2"></li>
						 </ul>				 
						 <ul>
							 <li class="text-info">输入您的地址: </li>
							 <li>
							 	省<select name="province" id="province"></select>
								市<select name="city" id="city"></select>
								区/县<select name="county" id="county"></select>
							 </li>
							 <script type="text/javascript">
							  	$(function(){
							  		var procode;
							  		//初始化下拉框
							  		initArea();
							  		//改变省份的事件
							  		$("select[name='province']").change(function(){
							             procode = $(this).val();
							             //alert(procode);
							             //清空原有的市区option值
							             $("select[name='city']").empty();
							             $("select[name='county']").empty();
							             getCity(procode);
							        });
							        //改变市的事件
							        $("select[name='city']").change(function(){
							             var citycode = $(this).val();
							             //清空原有的区option值
							             $("select[name='county']").empty();
							             getCounty(procode,citycode);
							        });
							  		
							  	});
							  	function initArea(){
							  		//初始化省份
							  		$.ajax({
							            type:"post",
							            url:"araeServlet",
							            data:{action:"province"},
							            dataType:"json",
							            success: function(result){//回调函数
							            	//alert(result);
							            	//遍历数组 data:要遍历的数组是谁；
							            	//index:表示数组的下标类似于  i=0;i++
							            	//value:数组中的存储的对象
							            	$.each(result,function(i,object){
							            	     //alert(index);
							            	    // alert(value);
							            	     //拼接省份下的option元素
							            	     $("select[name='province']").append(
							            	     	 "<option value="+object.provinceCode+">"+object.provinceName+"</option>"
							            	     );
							            	});
							            	//获取第一个省份的option
							            	var firstProvince=result[0].provinceCode;
							         		//初始化对应的市
							         		getCity(firstProvince);
							            }
							         });
							  	}
							  		//初始化对应的城市
							  	function getCity(firstProvince){
							  		 $.ajax({
							            type:"post",
							            url:"araeServlet",
							            data:{action:"city",provinceCode:firstProvince},
							            dataType:"json",
							            success: function(result){//回调函数
							            	$.each(result,function(i,object){
							            	     $("select[name='city']").append(
							            	     	 "<option value="+object.cityCode+">"+object.cityName+"</option>"
							            	     );
							            	});
							            	 //获取市的第一个option
							            	var firstcity=result[0].cityCode;
							         		//初始化对应的区
							         		getCounty(firstProvince,firstcity);
							            }
							         });
							       }
							     
							       function getCounty(firstProvince,firstcity){
							         	 $.ajax({
							            type:"post",
							            url:"araeServlet",
							            data:{action:"county",provinceCode:firstProvince,cityCode:firstcity},
							            dataType:"json",
							            success: function(result){//回调函数
							            	$.each(result,function(i,object){
							            	     $("select[name='county']").append(
							            	     	 "<option value="+object.countyCode+">"+object.countyName+"</option>"
							            	     );
							            	});
							            }
							         });
							      }
							  		
							  </script>
						 </ul>
						 <ul>
							 <li class="text-info">选择您的支付方式: </li>
							 <li id="checkboxUl">
							 	<input type="checkbox" name="checkboxName" value="1">微信&nbsp;
							 	<input type="checkbox" name="checkboxName" value="2">支付宝&nbsp;
							 	<input type="checkbox" name="checkboxName" value="3">银行卡
							 </li>
							 <script type="text/javascript">
								$(document).ready(function(){
									$(function(){
										$("#checkboxUl").find(":checkbox").each(function(){
											$(this).click(function(){
												if($(this).is(':checked')){ 
													$(this).attr('checked',true).siblings().attr('checked',false);
												}else{
													$(this).attr('checked',false).siblings().attr('checked',false);
												}
											});
										});
									});
								});
							
							</script>
						 </ul>
						 
												
						 <input type="submit" value="PAYMENT NOW" id="submit">
						 <p class="click">通过点击这个按钮，您就同意了我们的  <a href="terms.jsp">政策条款和条件</a>并付款。</p> 
					 </form>
					 <script type="text/javascript">
					 	$(function(){
					 		var flag = true;
					 		$("#name").blur(function(){
					 			var name= $("#name").val();
					 			var pd = /^[\u4e00-\u9fa5]{0,}$/;
					 			if(name==""){
					 				$(this).parent().next().html("不能为空");
					 				flag = false;
									return
					 			}else if(!pd.test(name)){
					 				$(this).parent().next().html("请输入汉字");
					 				flag = false;
									return
					 			}else{
					 				$(this).parent().next().html("nice");
					 			}
					 		});
					 		$("#phone").blur(function(){
					 			var phone= $("#phone").val();
					 			var pd = /^[1][3,4,5,7,8][0-9]{9}$/;
					 			if(phone==""){
					 				$(this).parent().next().html("不能为空");
					 				flag = false;
									return
					 			}else if(!pd.test(phone)){
					 				$(this).parent().next().html("请输入11位手机号");
					 				flag = false;
									return
					 			}else{
					 				$(this).parent().next().html("nice");
					 			}
					 		});
					 	});
					 </script>
				 </div>
			</div>
			
			<div class="reg-right">
				 <h3>商品详情</h3>
				 <div class="strip"></div>
				 <p>商品名称：<%=goods.getGoods_name() %></p>
				 <p>颜色：<%=goods.getGoods_color() %></p>
				 <p>商品价格：$<%=goods.getGoods_price() %></p>
				 <p>商品介绍:Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor. Integer laoreet placerat suscipit. Sed sodales scelerisque commodo. Nam porta cursus lectus. Proin nunc erat, gravida a facilisis quis, ornare id lectus. Proin consectetur nibh quis urna gravida mollis.This tab has icon in consectetur adipiscing eliconse consectetur adipiscing elit. Vestibulum nibh urna, ctetur adipiscing elit. Vestibulum nibh urna, t.consectetur adipiscing elit. Vestibulum nibh urna, Vestibulum nibh urna,it.

Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
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