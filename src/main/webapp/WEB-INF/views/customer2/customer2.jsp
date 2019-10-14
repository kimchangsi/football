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
	#alllists{
		background: #2c3c57;
		color: white;
		width: 66px;
		height: 41px;
	} 
	.divss{
		text-align: center;
		margin-left: 102px;
	}
	.ulss{  
		margin-left: 10px; 
		display: inline-block;
		display: inline;
		zoom: 1; 
		list-style: none;
	}
	.ulss li{
		float: left;
		margin-left: -1px;
		z-index: 1;
	}
	#aaaa{
		background: black;
		color:white;
		text-decoration: none;
	}
	
	#aleft{
		background: black;
		color: white;
	}
	#aright{
		background: black;
		color: white;
	}
</style>
<script>
/* $("#btn_notice_add").on("click", function(event) {
	location.href = "${pageContext.request.contextPath}/customer/Apply";
	event.preventDefault();
}); */
$("#aaaa").click(function() {
	toggleClass(".active-color");
})

</script>
<body>

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
						<li><a href="${pageContext.request.contextPath}/league" class="f_hvn">리그</a></li>
						<li><a href="${pageContext.request.contextPath}/customer">고객센터</a></li>
					</ul>
				</div>
				<div class="util">
					<ul>
						<li class="face"><a href="https://www.facebook.com/HMfutsalpark/" target="_blank"><span class="hide">facebook</span></a></li>
						<li class="insta"><a href="https://www.instagram.com/hmfutsalpark/" target="_blank"><span class="hide">instagram</span></a></li>

						
						<c:if test="${login.mId == null }">
							<li class="login"><a href="${pageContext.request.contextPath}/auth/login">MEMBER LOGIN</a></li>
						</c:if>
							
						<c:if test="${login.mId != null }">
							<li class="logout"><a href="${pageContext.request.contextPath}/auth/logout">MEMBER LOGOUT</a></li>
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
			<div class="sub_top">
				<h2>고객센터</h2>
				<video id="video01" autoplay="" playsinline="" muted="" loop="" height="460" width="100%" title="video element"> 
					<source src="${pageContext.request.contextPath}/resources/data/sub_07.mp4" type="video/mp4"> 
				</video> 
			</div>

			<div class="tab_wrap">
				<ul class="t03">
					<li class="on"><a href="${pageContext.request.contextPath}/customer2">공지사항</a></li>
					 
				</ul>
			</div>

			<div class="notice_wrap list">
				<h3 class="h_tit">공지사항</h3>
				
				<div class="table_top">
					<a href="${pageContext.request.contextPath}/customer2/noticeApply2" class="btn_base notice" ><span>등록</span></a>
				</div>
				
				<div class="table_wrap list"> 
					<table>
						<caption>공지사항 리스트</caption>
						<colgroup>
							<col style="width:90px" class="w01" />
							<col style="" />
							<col style="width:155px" class="w02" />
							<col style="width:85px"  class="tb" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성일</th>
								<th scope="col" class="tb">조회</th>
							</tr>
						</thead>
						<tbody>
					
							<c:forEach var="row" items="${list}">
								<tr>
								<td>${row.nNo }</td>
								<td class="al_left"><a href="${pageContext.request.contextPath}/customer2/view2?nNo=${row.nNo}&page=${pageMaker.cri.page}&searchType=${cri.searchType}&keyword=${cri.keyword}=${cri.keyword}" class="tit">${row.nTitle }</a></td>
								<td>
									<fmt:formatDate value="${row.nRegdate }" pattern="yyyy.MM.dd"/>
								</td>
								<td class="tb">${row.nReadCount }</td>
								<tr>
							</c:forEach>
					<!-- 
							<tr>
								<td>18</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=20&page=1" class="tit">[2019 플레이컵 풋살 페스티벌]</a></td>
								<td>2019.04.02</td>
								<td class="tb">6,065</td>
							</tr>
					
							<tr>
								<td>17</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=19&page=1" class="tit">[울산북구점] 불금 풋살 이벤트!</a></td>
								<td>2019.02.14</td>
								<td class="tb">687</td>
							</tr>
					
							<tr>
								<td>16</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=18&page=1" class="tit">[HM슈퍼메가 이벤트] 제 1회 HMSPORTS배 FIFA 도장깨깃!</a></td>
								<td>2019.01.22</td>
								<td class="tb">609</td>
							</tr>
					
							<tr>
								<td>15</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=17&page=1" class="tit">2019 HM풋살파크 특급 이벤트! </a></td>
								<td>2019.01.07</td>
								<td class="tb">799</td>
							</tr>
					
							<tr>
								<td>14</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=15&page=1" class="tit">안산 실내풋살장 HM'락'풋살파크 오픈!!</a></td>
								<td>2018.12.07</td>
								<td class="tb">1,072</td>
							</tr>
					
							<tr>
								<td>13</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=14&page=1" class="tit">[챔피언십 성인부]AIA 바이탈리티 2018 H풋살리그 전국 챔피언십 성인부 결과발표!^^</a></td>
								<td>2018.12.04</td>
								<td class="tb">534</td>
							</tr>
					
							<tr>
								<td>12</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=13&page=1" class="tit">[챔피언십 초등부]AIA 바이탈리티 2018 H풋살리그 전국 챔피언십 초등부 결과발표!^^</a></td>
								<td>2018.12.04</td>
								<td class="tb">436</td>
							</tr>
					
							<tr>
								<td>11</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=12&page=1" class="tit"> [챔피언십 성인부]AIA 바이탈리티 2018 H풋살리그 전국 챔피언십 성인부 조편성 및 대진스케줄 발표! </a></td>
								<td>2018.11.28</td>
								<td class="tb">1,121</td>
							</tr>
					
							<tr>
								<td>10</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=11&page=1" class="tit">[챔피언십 초등부]AIA 바이탈리티 2018 H풋살리그 전국 챔피언십 초등부 조편성 및 대진스케줄 발표!</a></td>
								<td>2018.11.27</td>
								<td class="tb">938</td>
							</tr>
					
							<tr>
								<td>9</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=9&page=1" class="tit">[대전탄방점 성인리그] 폭력 및 비신사적 행위에 따른 양팀 리그 실격패 처리</a></td>
								<td>2018.11.23</td>
								<td class="tb">672</td>
							</tr>
					
							<tr>
								<td>8</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=8&page=1" class="tit">[부산가야 성인리그] 부정선수 출전에 따른 해당 경기 실격패 처리 안내</a></td>
								<td>2018.11.22</td>
								<td class="tb">708</td>
							</tr>
					
							<tr>
								<td>7</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=7&page=1" class="tit">[서수원점 성인리그] 부정선수 출전에 따른 해당 경기 실격패 처리</a></td>
								<td>2018.11.16</td>
								<td class="tb">639</td>
							</tr>
					
							<tr>
								<td>6</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=6&page=1" class="tit">H-LEAGUE 주니어 그룹 부산지역 최종 우승팀 발표</a></td>
								<td>2018.11.14</td>
								<td class="tb">518</td>
							</tr>
					
							<tr>
								<td>5</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=5&page=1" class="tit">AIA바이탈리티 H-LEAGUE 이적시장 오픈!</a></td>
								<td>2018.11.01</td>
								<td class="tb">917</td>
							</tr>
					
							<tr>
								<td>4</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=4&page=1" class="tit">H-LEAGUE 부산가야점 초등부 현장 스케치</a></td>
								<td>2018.10.11</td>
								<td class="tb">743</td>
							</tr>
					
							<tr>
								<td>3</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=3&page=1" class="tit">AIA 바이탈리티 H-LEAGUE 서울지역 리그 대망의 START</a></td>
								<td>2018.10.02</td>
								<td class="tb">835</td>
							</tr>
					
							<tr>
								<td>2</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=2&page=1" class="tit">[HM풋살파크] 홈페이지 서버 정상화 안내</a></td>
								<td>2018.09.14</td>
								<td class="tb">641</td>
							</tr>
					
							<tr>
								<td>1</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=1&page=1" class="tit">[HM풋살파크] 홈페이지 개편 안내</a></td>
								<td>2018.09.12</td>
								<td class="tb">808</td>
							</tr> -->
					
						</tbody>
					</table>
				</div>

				<!-- Page -->
				<div class="pager_wrap">
					<div class="search">
						<span class="select" style="width:100px">
							<label for="select01">제목</label>
							<select id="select01" name="searchType" class="select_box">
								<option value="t" ${cri.searchType=='t'?'selected':'' }>제목</option>
							</select>
						</span>
						<input type="text" id="keywordInput" name="keyword" value="${cri.keyword }" style="width:200px" />
						<button class="btn_search" id="btnSearch" type="button"></button>
						<a href="${pageContext.request.contextPath}/customer2" id="alllists">전체보기</a>
					</div>
					
					<c:if test="${pageMaker.prev }">
					<div class="divss">
						<ul class="ulss">
							<li><a href="${pageContext.request.contextPath}/customer?page=${pageMaker.startPage-1 }&searchType=${cri.searchType}&keyword=${cri.keyword}" id="aleft">&laquo;</a></li>
						</ul>
					</div>
					</c:if>
					
					<c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }" >
					<div class="divss">
						<ul class="ulss">
							<li ${pageMaker.cri.page == idx ? 'class="active"' :'' } ><a href="customer?page=${idx }&searchType=${cri.searchType}&keyword=${cri.keyword}" id="aaaa">${idx }</a></li>
						</ul>
					</div>
					</c:forEach>
					
					<c:if test="${pageMaker.next }">
					<div class="divss">
						<ul class="ulss">
							<li><a href="${pageContext.request.contextPath}/customer?page=${pageMaker.endPage+1 }&searchType=${cri.searchType}&keyword=${cri.keyword}" id="aright"> &raquo; </a></li>
						</ul>
					</div>
					</c:if>	
				</div>
				<!-- //Page -->
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

<script>
	$("#btnSearch").click(function() {
		var select = $("select[name='searchType']").val();
		var keyword = $("input[name='keyword']").val();
		
		location.href = "customer?page="+${cri.page}+"&searchType="+select+"&keyword="+keyword;
	})
</script>
</body>
</html>
