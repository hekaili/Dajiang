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
<title>用户注册</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
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
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
	$(function(){
		var flag = true;//验证文本框
	  	var number = false;//验证手机号是否已经存在
	  	$("#userName").blur(function(){
	  		var userName = $(this).val();
	  		if(userName==""){
	  			$("#info1").html("姓名不能为空");
	  			flag = true;
	  		}else{
	  			$("#info1").html("");
	  			flag = false;
	  		}
	  	});
	  	$("#userEmail").blur(function(){
			var userEmail=$("#userEmail").val();
			var url="checkServlet";
			var pd = "userEmail";
			$.post(url,{userEmail:userEmail,pd:pd},function(result){
				  $("#info2").html(result);
			});
		});
	  	$("#pwd").blur(function(){
	  		var pwd = $(this).val();
	  		if(pwd==""){
	  			$("#info3").html("密码不能为空");
	  			flag = true;
	  		}else{
	  			$("#info3").html("");
	  			flag = false;
	  		}
	  	});
	  	
	  	$("#userPwd").blur(function(){
	  		var userPwd = $(this).val();
	  		var pwd = $("#pwd").val();
	  		if(userPwd==""){
	  			$("#info4").html("不能为空");
	  			flag = true;
	  		}else if(userPwd==pwd){
	  			$("#info4").html("ok");
	  			flag = false;
	  		}else{
	  			$("#info4").html("密码不一致");
	  			flag = true;
	  		}
	  	});

	  	$("#userPhone").blur(function(){
	  		var userPhone=$(this).val();
	  		if(userPhone==""){
	  			$("#info5").html("手机号不能为空");
  				flag = false;
	  		}
	  	});
	  	/* $("#submit").click(function(){
	  		$("#userName").blur();
	  		$("#userEmail").blur();
	  		$("#pwd").blur();
	  		$("#userPwd").blur();
	  		$("#userPhone").blur();
	  		var dataparams = $("#addFrom").serialize();
	  		if(!flag){
	  			if(check){
		  			$.ajax({
		  			type:"post",
		  			url:"addUser",
		  			data:dataparams,
		  			success:function(result){
		  				if(result){
		  					alert("注册成功");
		  					window.location.href="account.jsp";
		  				}else{
		  					alert("注册失败");
		  				}
		  				}
		  			});
	  			}
	  		}else{
	  			alert("请完善信息");
	  		}
		}); */
	});
	</script>
</head>
<body>
	<!-- header-section-starts -->
	<div class="header">
		<div class="header-top-strip">
			<div class="container">
				
				<div class="header-right">
						<div class="cart box_1">
							<a href="checkout.jsp">
								<h3>
									<span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)<img src="images/bag.png" alt="">
								</h3>
							</a>	
							<p><a href="javascript:;" class="simpleCart_empty">清空购物车</a></p>
							<div class="clearfix"> </div>
						</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	
<div class="registration-form">
	<div class="container">
	<div class="dreamcrub">
			   	 <ul class="breadcrumbs">
                    <li class="home">
                       <a href="index.jsp" title="Go to Home Page">首页</a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li class="women">
                       注册
                    </li>
                </ul>
                <ul class="previous">
                	<li><a href="index.jsp">返回浏览前一页面</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
		<h2>注册</h2>
		<div class="registration-grids">
			<div class="reg-form">
				<div class="reg">
					 <p>欢迎您，请输入以下详细信息继续。</p>
					 <p>如你曾在本公司登记，<a href="account.jsp">单击此处</a></p>
					 <form action="addUser" id="addFrom" method="post">
						 <ul>
							 <li class="text-info">姓名: </li>
							 <li><input type="text" name="userName" id="userName" value="" placeholder="请输入您的真实姓名"></li>
							 <li id="info1"  style="margin-left:42%;color:gray;display:inline;"></li>
						 </ul>				 
						<ul>
							 <li class="text-info">电子邮件: </li>
							 <li><input type="text" name="userEmail" id="userEmail" value="" placeholder="请输入电子邮箱"></li>
							 <li id="info2"  style="margin-left:42%;color:gray;display:inline;"></li>
						 </ul>
						 <ul>
							 <li class="text-info">输入您的密码: </li>
							 <li><input type="password" name="pwd" id="pwd" value="" placeholder="请输入密码"></li>
							 <li id="info3"  style="margin-left:42%;color:gray;display:inline;"></li>
						 </ul>
						 <ul>
							 <li class="text-info">确认密码:</li>
							 <li><input type="password" name="userPwd" id="userPwd" value="" placeholder="请再次输入密码"></li>
							 <li id="info4"  style="margin-left:42%;color:gray;display:inline;"></li>
						 </ul>
						 <ul>
							 <li class="text-info">手机号码:</li>
							 <li><input type="text" name="userPhone" id="userPhone" value="" placeholder="请输入手机号码" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(//D/g,'')"></li>
							 <li id="info5"  style="margin-left:42%;color:gray;display:inline;"></li>
						 </ul>				
						 <input type="submit" value="立即注册" id="submit">
						 <p class="click">通过点击这个按钮，你就同意了我的  <a href="terms.jsp">政策条款和条件。</a></p> 
					 </form>
				 </div>
			</div>
			<div class="reg-right">
				 <h3>完全免费的账户</h3>
				 <div class="strip"></div>
				 <p>Pellentesque neque leo, dictum sit amet accumsan non, dignissim ac mauris. Mauris rhoncus, lectus tincidunt tempus aliquam, odio 
				 libero tincidunt metus, sed euismod elit enim ut mi. Nulla porttitor et dolor sed condimentum. Praesent porttitor lorem dui, in pulvinar enim rhoncus vitae. Curabitur tincidunt, turpis ac lobortis hendrerit, ex elit vestibulum est, at faucibus erat ligula non neque.</p>
				 <h3 class="lorem">Lorem ipsum dolor.</h3>
				 <div class="strip"></div>
				 <p>Tincidunt metus, sed euismod elit enim ut mi. Nulla porttitor et dolor sed condimentum. Praesent porttitor lorem dui, in pulvinar enim rhoncus vitae. Curabitur tincidunt, turpis ac lobortis hendrerit, ex elit vestibulum est, at faucibus erat ligula non neque.</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>  
</body>
</html>