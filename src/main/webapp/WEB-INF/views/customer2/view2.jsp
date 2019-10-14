<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>HM FUTSAL PARK</title>
	<meta name="keywords" content="HM FUTSAL PARK">
	<meta name="description" content="프리미엄 풋살장 HM풋살파크, 전국 11개 지점, 대관 예약, 전국 규모 컵 대회 및 리그 대회 주최">
	<meta property="og:type" content="website">
	<meta property="og:image" content="https://hmfutsalpark.com/images/common/link_profile.png">
	<meta property="og:title" content="HM FUTSAL PARK">
	<meta property="og:description" content="프리미엄 풋살장 HM풋살파크">
	<meta property="og:url" content="https://hmfutsalpark.com">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- 공통css -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/commonH.css">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">
	
	<meta name="msapplication-TileColor" content="#2c3c57">
	<meta name="theme-color" content="#2c3c57">
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
	<!--[if lt IE 9]><script type="text/javascript" src="/js/libs/html5.js"></script><![endif]-->
	<!--[if lt IE 9]><script type="text/javascript" src="/js/libs/respond.min.js"></script><![endif]-->
	<!-- //공통css -->
	<!-- 공통js -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/datepicker.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/common.js"></script>   
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/form_check.js"></script>
	<!-- //공통js -->
 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/classic.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/classic.date.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/classic.time.css">
	<script src="${pageContext.request.contextPath}/resources/js/picker.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/picker.date.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/picker.time.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/legacy.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-116234591-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-116234591-1');
	</script>
<!-- Global site tag (gtag.js) - Google Analytics -->

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/content.css">
</head> 
<style>
	#centerbtn{
		text-align: center;
	}
</style>
<script>
$("#btn_notice_add").on("click", function(event) {
	location.href = "${pageContext.request.contextPath}/customer/noticeModify";
	event.preventDefault();
});


$(document).ready(function(){
    $("#btnDelete").click(function(){
        if(confirm("삭제하시겠습니까?")){
            document.form1.action = "${pageContext.request.contextPath}/delete";
            document.form1.submit();
        }
    });
    
    
});
</script>
<body>
<form name="form1" method="post">
<div id="wrapper">

	<!-- Skip Navigation -->
	<nav class="skip_nav">
		<a href="#container">Skip to content</a>
	</nav>
	<!-- //Skip Navigation -->
	<!-- Header -->
	<section id="header">
		<div class="header">
			<h1><a href="${pageContext.request.contextPath }"><span class="hide">HM FUTSAL PARK</span></a></h1>
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
						<li><a href="#" class="f_hvn">리그</a></li>
						<li><a href="${pageContext.request.contextPath}/customer">고객센터</a></li>
					</ul>
				</div>
				<div class="util">
					<ul>
						<li class="face"><a href="https://www.facebook.com/HMfutsalpark/" target="_blank"><span class="hide">facebook</span></a></li>
						<li class="insta"><a href="https://www.instagram.com/hmfutsalpark/" target="_blank"><span class="hide">instagram</span></a></li>

						
						
							<li class="login"><a href="${pageContext.request.contextPath}/auth/login">MEMBER LOGIN</a></li>
							
						
					</ul>
				</div>
			</nav>
		</div>
	</section>
	<!-- //Header -->
	<section id="container">
		<!-- Contents -->
		<div class="content">
			<div class="sub_top">
				<h2>고객센터</h2>
				<video id="video01" autoplay="" playsinline="" muted="" loop="" height="460" width="100%" title="video element"> 
					<source src="${pageContext.request.contextPath}/resources/data/sub_07.mp4" type="video/mp4"> 
				</video> 
			</div>

			<div class="tab_wrap">
				<ul class="t03">
					<li class="on"><a href="${pageContext.request.contextPath}/customer">공지사항</a></li>
				</ul>
			</div>
			<div class="notice_wrap view">
				<h3 class="h_tit">공지사항</h3>
				<div class="view_wrap">
					<div class="top">
						<p class="tit" id="title">${dto.nTitle }</p>
						<dl>
							<dt>작성일</dt>
							
							<dd><fmt:formatDate value="${dto.nRegdate }" pattern="yyyy.MM.dd"/></dd>
							<dt>조회</dt>
							<dd>${dto.nReadCount }</dd> 
						</dl>
					</div>

					<div class="info_text" id="txt">
						<p>${dto.nContext }</p>
					</div>
					
					<div id="centerbtn">
					<input type="hidden" name="nNo" value="${dto.nNo }">
					<a href="${pageContext.request.contextPath}/customer/noticeModify?nNo=${dto.nNo}" class="btn_base notice" id="btn_notice_mod"><span>수정</span></a>
       				<button type="button" id="btnDelete" class="btn_base">삭제</button>
					</div>
					
					<div class="btn_wrap right">
						<a href="${pageContext.request.contextPath}/customer2" class="btn_middle">목록으로</a>
					</div> 
					
					<div class="list_pn"> 
						<table>
							<colgroup>
								<col style="width:178px" class="w01"/>
								<col style="" />
							</colgroup>
							
						</table>
					</div>
					
				</div>

			</div>

		</div>
		<!-- //Contents -->
	</section>
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
</form>
</body>
</html>
