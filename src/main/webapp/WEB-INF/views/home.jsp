<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title>HM FUTSAL PARK</title>
	

	<!-- 공통css -->
	<link rel="stylesheet" type="text/css" href="resources/css/commonH.css">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">

	
	<meta name="msapplication-TileColor" content="#2c3c57">
	<meta name="msapplication-TileImage" content="/favicon/ms-icon-144x144.png">
	<meta name="theme-color" content="#2c3c57">
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
	<!--[if lt IE 9]><script type="text/javascript" src="/js/libs/html5.js"></script><![endif]-->
	<!--[if lt IE 9]><script type="text/javascript" src="/js/libs/respond.min.js"></script><![endif]-->
	<!-- //공통css -->

	<!-- 공통js -->
	<script type="text/javascript" async="async" src="https://www.google-analytics.com/analytics.js"></script>
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/common.js"></script>
	<!-- //공통js -->
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="async" src="https://www.googletagmanager.com/gtag/js?id=UA-116234591-1"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-116234591-1');
</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script src="resources/js/jquery.bxslider.js"></script>
<script>
	$(document).ready(function() {
		$('.bg_wrap .menu').addClass('on');
	});
</script>
</head>
<body>
	<div id="wrapper">
	<!-- Skip Navigation -->
	<nav class="skip_nav">
		<a href="#container">Skip to content</a>
	</nav>
	<!-- //Skip Navigation -->	<!-- Header -->
	<section id="header">
		<div class="header">
			<h1><a href="/football/"><span class="hide">HM FUTSAL PARK</span></a></h1>
			<button type="button" class="btn_nav"><span class="hide">Nav button</span></button>
			<nav>
				<div class="nav_wrap">
					<ul>
						<li>
							<a href="https://www.facebook.com/HMfutsalpark/" class="face" target="_blank"><span class="hide">facebook</span> </a>
							<a href="https://www.instagram.com/hmfutsalpark/" class="insta" target="_blank"><span class="hide">instagram</span></a>
						</li>
						<li><a href="${pageContext.request.contextPath}/spot">지점</a></li>
						<li><a href="${pageContext.request.contextPath}/reservation">구장</a></li>
						<li><a href="${pageContext.request.contextPath}/match">매치/용병</a></li>
						<li><a href="/league/league.asp" class="f_hvn">H-리그</a></li>
						<li><a href="${pageContext.request.contextPath}/customer">고객센터</a></li> 
					</ul>
				</div>
				<div class="util">
					<ul>
						<li class="face"><a href="https://www.facebook.com/HMfutsalpark/" target="_blank"><span class="hide">facebook</span></a></li>
						<li class="insta"><a href="https://www.instagram.com/hmfutsalpark/" target="_blank"><span class="hide">instagram</span></a></li>

						<c:if test="${login.mId == null }">
							<li class="login"><a href="auth/login">MEMBER LOGIN</a></li>
						</c:if>
							
						<c:if test="${login.mId != null }"> 
							<li class="logout"><a href="auth/logout">MEMBER LOGOUT</a></li>  
						</c:if>
					</ul>
				</div>
			</nav>
		</div>
	</section>
	<!-- //Header -->
	<section id="container">
		<!-- Contents -->
		<div class="content">
			<div class="bg_wrap">
				<!-- 공지사항 -->
				<div class="notice">
					
				</div>
				<!-- //공지사항 -->

				<div class="menu on">
					<ul>
						<li><a href="${pageContext.request.contextPath}/spot"><span>BRANCH</span><span class="ov">지점</span></a></li>
						<li><a href="${pageContext.request.contextPath}/reservation"><span>RESERVATION</span><span class="ov">구장</span></a></li>
						<li><a href="${pageContext.request.contextPath}/match"><span>MATCHING</span><span class="ov">매치/용병</span></a></li>
						<li><a href="/league/league.asp"><span>H-LEAGUE</span><span class="ov">H-리그</span></a></li>
						<li><a href="${pageContext.request.contextPath}/customer"><span>CUSTOMER</span><span class="ov">고객센터</span></a></li> 
					</ul>
				</div>

	<div class="t_wrap">
		<span class="hide"></span>
		<span class="hide">AIA생명 2019 H풋살리그2019.09.17 ~ 2019.11.23</span>
	</div>

	<!-- 순위 테이블 -->
	<!--<div class="rank_wrap">
		<div class="rank_list">
			
		</div>
	</div>-->
	<!-- //순위 테이블 -->

				<!-- 영상 배경 -->
				<div class="mv">
					<video id="video01" class="pblock" autoplay="" playsinline="" muted="" loop="" title=""> 
						<source src="resources/data/main.mp4" type="video/mp4"> 
					</video>
					
					<video id="video02" class="mblock" autoplay="" playsinline="" muted="" loop="" title=""> 
						<source src="resources/data/main_m.mp4" type="video/mp4"> 
					</video>
				</div>
				<!-- //영상 배경 -->
			</div>
		</div>

		 
		<!-- Layer popup -->
		<div class="layer_popup" style="display: block; visibility: hidden;" id="noticePop1">
			<button type="button" class="btn_closed" onclick="closeWin1();"><span class="hide">closed</span></button>
			<div class="layer_cont">
				
				
					<span class="img" onclick="javscript:window.open('http://hmfutsalpark.com/league/league.asp','_self');">
				
				
				</span>

				<div class="today">
					<span class="chk"><input type="checkbox" id="today" title="" name="" onclick="noticePop1Close(this);"><label for="today">오늘 하루 열지 않기</label></span>
				</div>
			</div>
		</div>
		<div class="layer_dim" style="display: none;"></div>
		<!-- //Layer popup -->
			<!-- <script>
				$(function() {
					cookiedata = document.cookie;
					if (cookiedata.indexOf("popLayer1=done") < 0) {

						$("#noticePop1").show();
						$('.layer_dim').show();
						$('html').addClass('hidden');
					}
				});

				$(".layer_dim").on("click",function(e) {
									$('html').removeClass('hidden');
									$('.layer_dim').hide();
									document.getElementById('noticePop1').style.visibility = "hidden";
								});

				function setCookie(name, value, expiredays) {
					var todayDate = new Date();
					todayDate.setDate(todayDate.getDate() + expiredays);
					document.cookie = name + "=" + escape(value)
							+ "; path=/; expires=" + todayDate.toGMTString()
							+ ";"
				}

				function noticePop1Close(e) {
					if (e.checked) {
						setCookie("popLayer1", "done", 1);
					}
					$('html').removeClass('hidden');
					$('.layer_dim').hide();
					document.getElementById('noticePop1').style.visibility = "hidden";
				}

				function closeWin1() {
					$('html').removeClass('hidden');
					$('.layer_dim').hide();
					document.getElementById('noticePop1').style.visibility = "hidden";
				}
			</script> -->



			<!-- //Contents -->
	</section>
<!-- <script language="Javascript">
	$(window).load(function() {
		$(".rank_wrap").css("display","block");
		var slide01 = $('.rank_list').bxSlider({
			controls: false,
			auto: true,
			pager: false,
			speed: 1200,
			pause: 4000,
			infiniteLoop: true,
			responsive: true,
			touchEnabled: true,
			hideControlOnEnd: true
		});
	});
</script> -->
	<!-- Footer -->
	<footer id="footer">
		<div class="footer_wrap">
			<span class="logo"></span>
			<div class="foot_util">
				<ul>
					<li><a href="/member/privacy.asp">개인정보처리방침</a></li>
					<li><a href="/member/tos.asp">이용약관</a></li>
					<li><a href="/member/emailcollection.asp">이메일무단수집거부</a></li>
				</ul>
			</div>
			<p class="info">서울시 성동구 왕십리로 58 FORHU 512호(성수동 1가)<span>TEL : 02-332-7807</span><span>FAX : 02-2061-0373</span></p>
			<p class="copy">COPYRIGHT© HM SPORTS. ALLRIGHT RESERVED</p>
		</div>
	</footer>
	<!-- //Footer -->
</div>

<iframe name="HiddenFrame" style="display:none;"></iframe>
	
</body>
</html>