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
.rese_wrap{
	width: 820px;
	margin: 0 auto;  
}
.btn_base.match span {
	display: inline-block;
	padding-right: 50px;
	background: url('resources/images/spot/icon_btn_match.png') no-repeat right center;
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

.fl_wrap{
	margin-top: 20px;
	overflow: hidden;
}

.input_wrap{
	width: 390px;
	float: left;
	margin-right: 10px; 
	margin-bottom: 30px;
}
.input_wrap p{
	font-weight: bold;
	margin-bottom: 10px;
}

.btn_wrap{
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
.date_all{
	width: 390px;
	height: 45px;
}


.memo p{
	font-weight: bold;
	margin-bottom: 10px;
}
</style>
<script>

	$(function() {

		
		//리그접수 버튼 클릭시
		 $("#reseStart").on("click",function(event){
			
		 	var leagueName = $("#select02 :selected").val();
		 	if(gNo==0){
		 		alert("리그를 선택해주세요");
		 	}else{
		 		location.href="${pageContext.request.contextPath}/league/receiptForm?lkName="+leagueName;
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
	<h2 id="main_title">리그</h2>
</div>

<div class="list_wrap">
	<div class="tab_wrap">
		<ul>

			<li class="on"><a href="http://localhost:8080/football/reservation">리그소개</a></li>

			<li><a href="http://localhost:8080/football/reservation/check">리그현황</a></li>

		</ul>
	</div>
	<div class="rese_wrap">
		<div class="match_wrap">
		<form method="POST" name="form" id="f1" action="${pageContext.request.contextPath}/league/resist">

			<h3 class="h_tit">리그접수</h3>
				<h4 class="h_bar line">리그접수</h4> 
				<div class="fl_wrap">
				
					<div class="input_wrap">
						<p>신청자명</p>
						<input type="text" class="input_fo" name="lName"  style="width:100%" value="${member.mName }" readonly="readonly">
					</div>
					
					<div class="input_wrap">
						<p>연락처</p>
						<input type="text" class="input_fo" name="lTel"  style="width:100%" value="${member.mTel }"  readonly="readonly">
					</div>
					
					<div class="input_wrap">
						<p>리그종류</p>
						<select class="select_all"  id="sel_spot2" name="lLeagueName.lkName">
							<option value="0">리그 선택</option>
							<c:forEach var="lkList" items="${list}">
								<option value="${lkList.lkName}">${lkList.lkName}</option>
							</c:forEach>
						
							
							
						</select>
					</div>
					
					<div class="input_wrap"> 
						<p>팀 분류</p>
						<select class="select_all" name=lTeam.tCf id="sel_ground">
							<option value="0">팀분류 선택</option>
							<option value="초등부">초등부</option>
							<option value="성인부">성인부</option>
							
							
						</select>
					</div>
					
					<div class="input_wrap">
						<p>팀명</p>
						<input type="text" class="input_fo"   style="width:100%" name ="lTeam.tName">
					</div>
					
					<div class="input_wrap">
						<p>팀코드</p>
						<input type="password" class="input_fo"   style="width:100%" name="lTeam.tCode">
					</div>
					
					
				<div class="btn_wrap">
						<input type="submit" value="등록하기" class="btn_big" id="">
						<a href="${pageContext.request.contextPath}/league" class="btn_big gray" id="del_match">취소하기</a>
					</div>
			</div>
		</form>


	</div>

	</div>



</div>
<%@ include file="../../views/include/footer.jsp"%>