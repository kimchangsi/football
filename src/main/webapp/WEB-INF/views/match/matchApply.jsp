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
		
		//지점 select box 변경 될때
		$("#sel_spot2").on("change", function() {
			$("#sel_ground").empty();
			$("#sel_ground").append("<option value='0'>구장 선택</option>");
			
			var sNo =  $("#sel_spot2 :selected").val(); 
			
			if(sNo!=0){
				$.ajax({
					url:"appliy/"+sNo,
					type:"get",
					dataType:"json",
					success:function(res){
						console.log(res); 
						for (var i = 0; i < res.length; i++) {
							var gName = res[i].gName;
							var gNo = res[i].gNo;
							var $option = $("<option value=+"+gNo+">"+gName+"</option>");
							$("#sel_ground").append(   $option  );
							
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
				href="${pageContext.request.contextPath}/match">매치신청</a></li>

			<li><a href="${pageContext.request.contextPath}/mercenary">용병모집</a></li>

		</ul>
	</div>
	<div class="match_wrap">
		<form method="POST" name="form" id="f1" action="${pageContext.request.contextPath}/match/resist">

			<h3 class="h_tit">매치신청</h3>
			<div class="write_wrap">
				<h4 class="h_bar line">매치신청</h4>
				<div class="fl_wrap">
				
					<div class="input_wrap">
						<p>신청자명</p>
						<input type="text" class="input_fo" title=""  style="width:100%" value="${login.mName }" readonly="readonly">
						<input type="hidden" name="mId" value="${login.mId}"> 
					</div>
					
					<div class="input_wrap">
						<p>연락처</p>
						<input type="text" class="input_fo" title=""  style="width:100%" value="${login.mTel }"  readonly="readonly">
					</div>
					
					<div class="input_wrap">
						<p>지점</p>
						<select class="select_all"  id="sel_spot2">
							<option value="0">지점 선택</option>
							<c:forEach var="sList" items="${spotList }">
								<option value="${sList.sNo}">${sList.sName}</option>
							</c:forEach>
						
							
							
						</select>
					</div>
					
					<div class="input_wrap"> 
						<p>구장</p>
						<select class="select_all" name="gNo" id="sel_ground">
							<option value="0">구장 선택</option>
							
							
						</select>
					</div>
					
					<div class="input_wrap">
						<p>매치일정</p>
						<input type="date" class="date_all" name="mbTime">
					</div>
					
					<div class="input_wrap">
						<p>시간선택</p>
						<select class="select_all" name="mbTime2" >
							<option value="0">시간 선택</option>
							<option value="08:00 ~ 10:00">08:00 ~ 10:00</option>
							<option value="10:00 ~ 12:00">10:00 ~ 12:00</option>
							<option value="12:00 ~ 14:00">12:00 ~ 14:00</option>
							<option value="14:00 ~ 16:00">14:00 ~ 16:00</option>
							<option value="18:00 ~ 20:00">18:00 ~ 20:00</option>
							<option value="20:00 ~ 22:00">20:00 ~ 22:00</option>
							<option value="22:00 ~ 24:00">22:00 ~ 24:00</option>
						</select>
					</div>
					
					<div class="input_wrap">
						<p>매치형태</p>
						<select class="select_all" name="mbMatchForm">
							<option value="0">매치형태 선택</option>
							<option value="5:5">5:5</option>
							<option value="6:6">6:6</option>
						</select>
					</div>
					
					<div class="input_wrap">
						<p>팀 수준</p>
						<select class="select_all" name="mbLevel">
							<option value="0">팀수준 선택</option>
							<option value="상">상</option>
							<option value="중상">중상</option>
							<option value="중">중</option>
							<option value="중하">중하</option>
							<option value="하">하</option>
						</select>
					</div>
					
				</div>
				
				<div class="memo" >
						<p>메모</p> 
						<textarea class=input_fo name="mbContext" rows="" cols="" placeholder="내용을 입력하세요." style="width:100%; height:275px"></textarea>
					</div>
				<div class="btn_wrap">
						<input type="submit" value="등록하기" class="btn_big" id="">
						<a href="${pageContext.request.contextPath}/match" class="btn_big gray" id="del_match">취소하기</a>
					</div>
			</div>
		</form>


	</div>

</div>
<%@ include file="../../views/include/footer.jsp"%>