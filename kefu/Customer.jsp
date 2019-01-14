<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'serviceChat.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
	<style>
		 #char{
        	background-color:#Fc6;
            top: 17%; 
            left: 7%; 
       		border:2px solid #FC6;
        	width:500px;
        	height:278px;
        	overflow-y:auto;
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
      #font{
      	border:2px solid #FC9;
      	background-color:#FC9;
      	width:500px;
      	height:50px;
      	text-align:center;
      	font-family:"Arial Black", Gadget, sans-serif;
        font-weight: bold;
        line-height: 50px;
        font-size:25px;
        border-radius: 20px;
      }
      #boby{
      	background-color:#FFC;
      }
     
	</style>
  </head>
  
  <body id="boby">
  <div id="font">
  	E-shop客服中心
  </div>
    	
    	<div id = "char"></div>
    	 <input type = "text" name = "customer" id = "customer">
    	<input type = "button" value = "发送" id = "submit" onClick="chen()">
    </body>
    <script type="text/javascript">
   		
    	/* $(function(){
    		//调取数据库里的内容
    		initChar();
    		var charnext;
    		//失去焦点事件（判断敏感词）
    		$("#userchat").blur(function(){
	    		 //接受参数
	    		 charnext = $("#userchat").val();
	    		 //专门判断字符是否是违规字符
	    		 charecord(charnext);
    		});
    		//点击事件（放送聊天内容）
    		$("#submit").click(function(){
    		 //专门判断字符是否是违规字符
	    	 charnext = $("#userchat").val();
    		 //判断用户输入内容不能为空
    		 if(charnext == ""){
    		 	//为空的话禁用发送按钮并在网页上提醒
    		 	$("#userchat").val("       输入内容不能为空");
    		 	$("#userchat").css("color","red");
    		 	$("#submit").attr("disabled","disabled");
    		 	//当你再次点击输入框的时候
    		 	$("#userchat").click(function(){
	    		 	//清除输入框的内容
			  		$("#userchat").val("");
			  		//解除禁用事件
		  			$("#submit").removeAttr("disabled");
    		 	});
    		 }else{
    		 //不为空的情况下
	  			//清除输入框的内容
	  			$("#userchat").val("");
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
    					if(o.identity == 0){
    						$("#char").append(
    						"<input type = 'text' style = 'border:none' style='background-color:red' readonly id='font_two'}><span>"+o.charnext+"</span></br>"
    						);
    					}else{
    						$("#char").append(
    						"<span>"+o.charnext+"</span><input type = 'text' style = 'border:none'  readonly id='font_three'></br>"
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
    			data:"identity=0",
    			dataType:"json",
    			success:function(result){
	    		 	//在用户内容显示页面拼接上输入的内容
		   			$("#char").append(
		   				"<input type = 'text' style = 'border:none' readonly><span>"+result+"</span></br>"
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
    					if(o.identity != 0){
    						if(o.send == "true"){
    							window.location.reload();
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
    			data:"identity=1&send=false",
    			dataType:"json",
    			success:function(result){
    			}
    		});
    	} */
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
    					if(o.identity == 0){
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
    			data:"identity=0",
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
    					if(o.identity != 0){
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
    			data:"identity=1&send=false",
    			dataType:"json",
    			success:function(result){
    			}
    		});
    	}
    	s
    </script>
  </body>
</html>
