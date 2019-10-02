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
</style>
<script>

	$(function() {

		$(".tab_wrap li").click(function() {
			$(".on").removeClass("on");
			$(this).addClass("on");
		})
		
		
		
		 $("#reseStart").on("click",function(event){
			
		 	var gNo = $("#select02 :selected").val();
		 	if(gNo==0){
		 		alert("지점을 선택해주세요");
		 	}else{
		 		location.href="${pageContext.request.contextPath}/reservation/form?sNo="+gNo;
		 	}
			 event.preventDefault();
        });



	})
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
		<h3 class="h_tit">구장예약</h3>

		<div class="rese_start">
			<p class="tit">구장예약에 앞서 원하시는 지점을 선택해 주세요.</p>
			<div class="start_wrap">
				<div class="cont">
					<form name="form" method="get" action="rese_form.asp">
						<select id="select02" name="branch_code">
							 <option value="0">지점선택</option> 
							<c:forEach var="list" items="${sList }">
								<option value="${list.sNo }">${list.sName }</option>
							</c:forEach>


						</select> 
					</form>

					<div class="btn_wrap">
						<a href="#" class="btn_big" id="reseStart">구장예약 시작하기</a>
					</div>
				</div>
			</div>
		</div>

	</div>



</div>
<%@ include file="../../views/include/footer.jsp"%>