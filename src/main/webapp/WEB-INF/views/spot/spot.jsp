<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../views/include/header.jsp"%>
<style>
#video_wrap {
	position: relative;
	width: 100%;
	height: 460px;
}

#video_wrap #main_title {
	position: absolute;
	left: 360px;
	bottom: 15px;
	font-size: 80px;
	color: white;
}

.title_wrap {
	width: 100%;
	height: 85px;
	background-color: #2c3c57;
}

.sub_title {
	width: 1200px;
	margin: 0 auto;
	height: 100%;
}

.sub_title2 {
	width: 400px;
	background: #192336;
	height: 100%;
}

.sub_title2 h2 {
	padding-top: 25px;
	padding-left: 50px;
	color: white;
}

.list_wrap {
	width: 100%;
}

.con {
	width: 100%;
	height: 368px;
}

.info2 {
	width: 1200px;
	height: 270px;
	margin: 0 auto;
	padding: 52px 0 46px 0;
}

.list_wrap .cont {
	background: #fff
}

.list_wrap .cont .info2 {
	position: relative;
	margin: 0 auto;
	padding: 52px 0 46px 0;
	max-width: 1200px;
	height: 270px;
}

.list_wrap .cont .info2 .thumb {
	overflow: hidden;
	display: block;
	position: absolute;
	top: 52px;
	left: 0;
	width: 430px;
	height: 270px;
	border-radius: 8px;
	font-size: 0;
	line-height: 0
}

.list_wrap .cont .info2 .thumb img {
	width: 430px;
	height: 270px;
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-webkit-transform: scale(1);
	transform: scale(1);
	-moz-transition: all 0.6s;
	-o-transition: all 0.6s;
	-webkit-transition: all 0.6s;
	transition: all 0.6s;
}

.list_wrap .cont .info2 .thumb:hover img {
	-moz-transform: scale(1.05);
	-ms-transform: scale(1.05);
	-webkit-transform: scale(1.05);
	transform: scale(1.05);
}

.list_wrap .cont .info2 .thumb .ov {
	opacity: 0;
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background: rgba(0, 0, 0, 0.5);
	-moz-transition: all 0.6s;
	-o-transition: all 0.6s;
	-webkit-transition: all 0.6s;
	transition: all 0.6s;
}

.list_wrap .cont .info2 .thumb .ov ul {
	position: absolute;
	top: 50%;
	right: 0;
	left: 0;
	-webkit-transform: translate3d(0, -50%, 0);
	-moz-transform: translate3d(0, -50%, 0);
	-o-transform: translate3d(0, -50%, 0);
	-ms-transform: translate3d(0, -50%, 0);
	transform: translate3d(0, -50%, 0);
}

.list_wrap .cont .info2 .thumb .ov ul li {
	color: #fff;
	font-size: 28px;
	font-weight: 700;
	line-height: 38px;
	text-align: center
}

.list_wrap .cont .info2 .thumb:hover .ov {
	opacity: 1
}

.list_wrap .cont .info2 .t_wrap {
	position: absolute;
	top: 52px;
	right: 0;
	width: 657px
}

.list_wrap .cont .info2 .t_wrap .tit {
	padding: 0;
	border-bottom: 2px solid #2c3c57;
	color: #2c3c57;
	font-size: 36px;
	font-weight: 700;
	line-height: 58px;
}

.list_wrap .cont .info2 .t_wrap p {
	padding-left: 50px;
	color: #383838;
	font-size: 20px;
	line-height: 44px
}

.list_wrap .cont .info2 .t_wrap .t01 {
	margin-top: 29px;
	background: url('resources/images/spot/icon_loca.png') no-repeat 0
		center;
}

.list_wrap .cont .info2 .t_wrap .t02 {
	background: url('resources/images/spot/icon_tell.png') no-repeat 0
		center;
}

.list_wrap .cont .info2 .t_wrap .btn_wrap {
	margin-top: 20px;
}

.list_wrap .cont .info2 .t_wrap .btn_wrap a {
	display: inline-block;
	width: 200px;
	height: 68px;
	line-height: 68px;
	text-align: center;
	border-radius: 5px
}

.list_wrap .cont .info2 .t_wrap .btn_wrap a span {
	display: inline-block;
	padding-left: 44px;
	color: #fff;
	font-size: 20px;
	line-height: 68px
}

.list_wrap .cont .info2 .t_wrap .btn_wrap a.btn_rese {
	background: #2c3c57
}

.list_wrap .cont .info2 .t_wrap .btn_wrap a.btn_rese span {
	background: url(resources/images/spot/icon_btn_rese.png) no-repeat 0
		center
}

.list_wrap .cont .info2 .t_wrap .btn_wrap a:hover {
	background: #003f96 !important
}

.list_wrap .cont:nth-child(2n) {
	background: #f0f0f0
}

.list_wrap .cont:nth-child(2n) .thumb {
	left: auto;
	right: 0
}

.list_wrap .cont:nth-child(2n) .t_wrap {
	left: 0;
	right: auto
}

.tel{
	text-decoration: none;
	color:black;
}
</style>
<div id="video_wrap">
	<video id="v"
		src="${pageContext.request.contextPath}/resources/media/sub_01.mp4"
		muted autoplay loop="loop">
	</video>
	<h2 id="main_title">지점현황</h2>
</div>
<div class="title_wrap">
	<div class="sub_title">
		<div class="sub_title2">
			<h2>전체 지점</h2>
		</div>
	</div>
</div>
<div class="list_wrap">

	<c:forEach var="spot" items="${list }">
		<c:if test="${spot.sNo%2==1 }">
			<div class="cont">
			<div class="info2">
				<span class="thumb"> <img
					src="${pageContext.request.contextPath }/resources/images/spot/${spot.sImg}" alt="">
					<div class="ov">
						<ul>
							<li>#인조잔디</li>
							<li>#국제규격</li>
							<li>#실내구장</li>
							<li>#탈의실</li>
							<li>#주차장(무료)</li>
						</ul>
					</div>
				</span>

				<div class="t_wrap">
					<p class="tit">${spot.sName }</p>
					<p class="t01">${spot.sAddr }</p>
					<p class="t02">
						<a href="tel:010-6252-1007" class="tel">${spot.sTel}</a>
					</p>
					<div class="btn_wrap">
						<a href="#" class="btn_rese"><span>예약하기</span></a>
					</div>
				</div>
			</div>
		</div>
		
		</c:if>
		<c:if test="${spot.sNo%2==0 }">
			<div class="cont">
		<div class="info2">
			<span class="thumb"> <img
				src="${pageContext.request.contextPath }/resources/images/spot/${spot.sImg}" alt="">
				<div class="ov">
					<ul>
						<li>#인조잔디</li>
							<li>#국제규격</li>
							<li>#실내구장</li>
							<li>#탈의실</li>
							<li>#주차장(무료)</li>
					</ul>
				</div>
			</span>
			<div class="t_wrap">
				<p class="tit">${spot.sName }</p>
					<p class="t01">${spot.sAddr }</p>
				<p class="t02">
					<a href="tel:010-3770-7907" class="tel">${spot.sTel}</a> 
				</p>
				<div class="btn_wrap">
					<a href="#" class="btn_rese"><span>예약하기</span></a>
				</div>
			</div>
		</div>
	</div>
		
		</c:if>
		
		
		
		
		

	</c:forEach>


	


</div>
<%@ include file="../../views/include/footer.jsp"%>