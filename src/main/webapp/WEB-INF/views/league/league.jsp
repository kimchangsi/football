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
.btn_base.match span {
	display: inline-block;
	padding-right: 50px;
	background: url('resources/images/spot/icon_btn_match.png') no-repeat
		right center;
}

#match_table_wrap {
	width: 1300px;
	margin: 0 auto;
}

#video_wrap #main_title2 {
	position: absolute;
	left: 360px;
	bottom: 35px;
	font-size: 80px;
	color: white;
}

.table_top {
	text-align: right;
}

.write_wrap {
	margin: 0 auto;
	max-width: 800px !important;
	padding: 0 10px
}

.fl_wrap {
	margin-top: 20px;
	overflow: hidden;
}

.input_wrap {
	width: 390px;
	float: left;
	margin-right: 10px;
	margin-bottom: 30px;
}

.input_wrap p {
	font-weight: bold;
	margin-bottom: 10px;
}

.btn_wrap {
	margin-top: 20px;
}

.input_fo {
	border: 1px solid #999 !important;
}

.input_fo:focus {
	border: 1px solid #4d90fe !important;
}

.select_all {
	width: 390px;
	height: 45px;
}

.date_all {
	width: 390px;
	height: 45px;
}

.memo p {
	font-weight: bold;
	margin-bottom: 10px;
}

#league_wrap {
	width: 960px;
	margin: 0 auto;
	text-align: center;
}

#join_div {
	width: 400px;
	height:141px;
	background: #f2f2f2 url('resources/images/league/btn_league_04.png')
		no-repeat 0 center;
	margin: 0 auto;
}

#join_div a {
	display: block;
	position: relative;
	color: #2c3c57;
	font-size: 40px;
	font-weight: 700;
	line-height: 141px;
}
</style>
<script>
	$(function() {

		//지점 select box 변경 될때
		$("#sel_spot2")
				.on(
						"change",
						function() {
							$("#sel_ground").empty();
							$("#sel_ground").append(
									"<option value='0'>구장 선택</option>");

							var sNo = $("#sel_spot2 :selected").val();

							if (sNo != 0) {
								$
										.ajax({
											url : "${pageContext.request.contextPath}/match/appliy/"
													+ sNo,
											type : "get",
											dataType : "json",
											success : function(res) {
												console.log(res);
												for (var i = 0; i < res.length; i++) {
													var gName = res[i].gName;
													var gNo = res[i].gNo;
													var $option = $("<option value=+"+gNo+">"
															+ gName
															+ "</option>");
													$("#sel_ground").append(
															$option);

												}
											}
										})
							}

						})

	})
</script>
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
				href="${pageContext.request.contextPath}/mercenary">리그소개</a></li>
			<li><a href="${pageContext.request.contextPath}/mercenary">리그현황</a></li>
		</ul>
	</div>
	<div id="league_wrap">
		<img
			src="${pageContext.request.contextPath}/resources/images/league/1021201908225266319. AIA생명 2019 H풋살리그 포스터.jpg">
		<div id="join_div">
			<a href="league_join_step1.asp"><span>대회접수</span></a><br>


		</div>
		<p>
			[ 참가신청 방법 ]<br><b> '리그접수'</b>를 클릭하여 원하는 리그에 팀 접수!(팀코드 필요)<br>


		</p>
	</div>



</div>
<%@ include file="../../views/include/footer.jsp"%>