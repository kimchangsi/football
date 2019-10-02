<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../views/include/header.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common2.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/commonH.css"
	type="text/css">

<style>

#league_wrap {
	width: 960px;
	margin: 0 auto;
	text-align: center;
}

#join_div {
	width: 350px;
	height:141px;
	background: #f2f2f2 url('resources/images/league/btn_league_04.png')
		no-repeat 0 center;
	margin: 0 auto;
	padding-left: 40px;
	margin-bottom: 50px;
	margin-top: 50px;
}

#join_div a {
	display: block;
	position: relative;
	color: #2c3c57;
	font-size: 40px;
	line-height: 141px;
}

#join_div span{
	padding-left: 30px;
}
</style>

<div id="video_wrap">
	<video id="v"
		src="${pageContext.request.contextPath}/resources/media/sub_01.mp4"
		muted autoplay loop="loop">
	</video>
	<h2 id="main_title2">매치/용병</h2>
</div>

<div class="list_wrap">
	<div class="tab_wrap">
		<ul>
			<li class="on"><a
				href="${pageContext.request.contextPath}/mercenary">리그</a></li>
			<li><a href="${pageContext.request.contextPath}/mercenary">리그현황</a></li>
		</ul>
	</div>
	<div id="league_wrap">
		<h3 class="h_tit">리그</h3>
		<img
			src="${pageContext.request.contextPath}/resources/images/league/1021201908225266319. AIA생명 2019 H풋살리그 포스터.jpg">
		<div id="join_div">
			<a href="${pageContext.request.contextPath}/league/receipt"><span>리그 접수</span></a><br>
		</div>
		
		<p>
			[ 참가신청 방법 ]<br><b> '리그접수'</b>를 클릭하여 원하는 리그에 팀 접수!(팀코드 필요)<br>


		</p>
	</div>



</div>
<%@ include file="../../views/include/footer.jsp"%>