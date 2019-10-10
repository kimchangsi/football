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
.rese_wrap .rese_start .tit {
	
	background: #2c3c57 url('resources/images/ground/bg_rese_start.png') no-repeat 0
		0;
	
}
.cancelSpan{
	color:red;
}

.table_wrap{
	width: 1300px;
	margin: 0 auto;
}
.cancel2{
	margin-left:10px;
	padding-bottom:5px;
	color: white !important;
	background-color: red  !important;
	font-size: 13px;
	width: 70px;
	height: 40px; 
	border-radius:15px; 
	
}

.okSpan{
	color:blue;
}
</style>
<script>

</script>
<div id="video_wrap">
	<video id="v"
		src="${pageContext.request.contextPath}/resources/media/video element.mp4"
		muted autoplay loop="loop">
	</video>
	<h2 id="main_title">구장</h2>
</div>

<div class="list_wrap">
	<div class="tab_wrap">
		<ul>

			<li class="on"><a href="http://localhost:8080/football/reservation">대관예약</a></li>

			<li><a href="http://localhost:8080/football/reservation/check">예약확인</a></li>

		</ul>
	</div>
	<div class="rese_wrap">
		<h3 class="h_tit">예약확인</h3>
		<div class='table_wrap list'>
	<table id="mainT">
					<caption>용병신청 리스트</caption>

					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">예약시간</th>
							<th scope="col">결제시간</th>
							<th scope="col">이름(아이디)</th>
							<th scope="col" class="tb">구장</th>
							<th scope="col" class="tb">예약상태</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach  items="${list}" var="rList" varStatus="s">
							<tr>
								<td>${s.count }</td>
								<td>${rList.rTime }</td>
								<td>
									<fmt:formatDate value="${rList.rPayTime }" pattern="yyyy-MM-dd HH:mm:ss"/>
								</td>
								<td>${rList.rMember.mName }( ${rList.rMember.mId })</td>  
								<td>${rList.rGno.gName }</td>
								<td>
									<c:if test="${rList.rCancel==0}">  
										<span class='okSpan'>예약완료</span><button class='cancel2' data-rNo="${rList.rNo}">취소하기</button> 
									</c:if>
									<c:if test="${rList.rCancel==1}">
										<span class='cancelSpan'>취소</span>
									</c:if>
									
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
		</div>

	</div>



</div>
<%@ include file="../../views/include/footer.jsp"%>