<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>풋살 예약</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function() {
		
		
		var headerOffsetTop = $(".page-header").offset().top;
		
		$(window).on("scroll",function(){
			var top = $(window).scrollTop();//scroll의 높이값
			
			if(top > headerOffsetTop){
			     $(".inner").css("margin-left","200px");
			     $(".site-logo").css("top","0");
			     $("#logo").attr('src', '${pageContext.request.contextPath}/resources/images/logo_t.png');
			     $(".page-header").addClass("sticky-header");
				
			}
			else{
				 $(".inner").css("margin-left","300px");
				 $(".site-logo").css("top","-80px");
				$(".page-header").removeClass("sticky-header");
				$("#logo").attr('src', '${pageContext.request.contextPath}/resources/images/logo.jpg');
			}
		})
		
	})
</script>
</head>
<body>
	<header class="page-header">
		<div class="inner">
			<h1 class="site-logo">
				<a href="#"> <img id="logo" src="${pageContext.request.contextPath}/resources/images/logo.jpg" >
				</a>
			</h1>
			<nav class="primary-nav">
				<ul>
					<li><a href="#">지점</a></li>
					<li><a href="#">구장</a></li>
					<li><a href="#">매치/용병</a></li>
					<li><a href="#">리그</a></li>
					<li><a href="#">고객센터</a></li>
				</ul>
			</nav>
			
			<nav class="primary-nav2">
				<ul>
					<li><a href="#"> <img id="logo" src="${pageContext.request.contextPath}/resources/images/icon_facebook.png" width="26px" height="26px"></a></li>
					<li><a href="#"><img id="logo" src="${pageContext.request.contextPath}/resources/images/icon_instagram.png" width="26px" height="26px"></a></li>
					<li><a href="#"><span id="login">MEMBER LOGIN</span> <img id="logo" src="${pageContext.request.contextPath}/resources/images/icon_login.png" width="26px" height="26px"></a></li>
				</ul>
			</nav>
			
		</div>
		
	</header>
	
