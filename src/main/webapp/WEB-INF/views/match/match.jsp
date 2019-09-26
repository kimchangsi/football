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
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script
	src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
	
<style>
.btn_base.match span {
	display: inline-block;
	padding-right: 50px;
	background: url('resources/images/icon_btn_match.png') no-repeat right
		center
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

.tbcolor {
	color: #4d90fe !important;
	font-size: 20px !important;
	font-weight: bold !important;
}

/* 페이징 */
.pagination {
	list-style: none;
	overflow: hidden;
	clear: both;
	width: 630px;
	margin: 20px auto;
	padding: 0;
}

.pagination li {
	float: left;
	width: 40px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	border: 1px solid #cecece;
	background: white;
	margin-left: 10px;
}

.pagination li a {
	font-weight: normal;
	color: #afafaf;
}

.active {
	background: #2c3c57 !important;
}

.active a {
	font-weight: bold !important;
	color: white !important;
}

a.btn_page.prev {
	margin: 0;
	background: #fff url('resources/images/common/icn_page_prev.png')
		no-repeat center center;
}

a.btn_page.next {
	margin: 0;
	background: #fff url('resources/images/common/icn_page_next.png')
		no-repeat center center;
}

#detailDiv {
	border: 1px solid black !important;
}

.layer_popup .btn_closed {
	display: block;
	position: absolute;
	top: 0;
	right: 0;
	width: 60px;
	height: 60px;
	background: url('resources/images/btn_pop_closed.png') no-repeat center;
}

#mbNo {
	display: none;
}

#detailUpdateInfo, #dForm2, #dSpot2, #datepicker, #dTime3, #dGround2,
	#dLevel2, #dApp2, #dMemo2 {
	display: none;
}

#dName,#dTel{
	font-weight: bold;
}
.select_all{
	width: 300px !important;
	height: 40px !important;
	font-size: 18px !important; 
}


/* date */
.ui-datepicker {
	display: none;
	background-color: #f2f2f2;
	border-radius: 5px;
	padding: 20px;
	width: 270px; 
}

#datepicker:focus>.ui-datepicker {
	display: block;
}

.ui-datepicker-prev, .ui-datepicker-next {
	cursor: pointer;
}

.ui-datepicker-next {
	float: right;
}

.ui-state-disabled {
	cursor: auto;
	color: hsla(0, 0%, 80%, 1);
}

.ui-datepicker-title {
	text-align: center;
	padding: 10px;
	font-weight: 100;
	font-size: 20px;
}

.ui-datepicker-calendar {
	width: 100%;
}

.ui-datepicker-calendar>tbody td.ui-datepicker-week-end:first-child a {
	color: red;
}

.ui-datepicker-calendar>tbody td.ui-datepicker-week-end:last-child a {
	color: blue;
}

/* day of week cell */
.ui-datepicker-calendar>thead>tr>th {
	padding: 5px;
	font-size: 20px;
	font-weight: 400;
}
/* day cell */
.ui-datepicker-calendar>tbody>tr>td {
	width: 44px;
	height: 44px;
	cursor: pointer;
	padding: 5px;
	font-weight: 100;
	text-align: center;
	border: 1px solid #d9d9d9;
}

.ui-datepicker-calendar>tbody>tr>td:hover {
	background-color: #2c3c57;
}

.ui-datepicker-calendar>tbody>tr>td .ui-state-active {
	color: white;
}

.ui-datepicker-calendar>tbody>tr>.ui-datepicker-current-day {
	background-color: #2c3c57;
}

.ui-datepicker-calendar>tbody>tr>.ui-datepicker-current-day {
	background-color: #2c3c57;
}

.ui-datepicker-calendar>tbody>tr>td:hover>.ui-state-default {
	color: white;
}

.ui-datepicker-calendar>tbody>tr>td>a {
	color: black;
	font-size: 18px;
	font-weight: 400;
	text-decoration: none;
}

/* past days */
.ui-datepicker-calendar>tbody>tr>.ui-state-disabled {
	color: #d9d9d9;
}

.ui-datepicker-calendar>tbody>tr>.ui-state-disabled:hover {
	cursor: auto;
	background-color: red;
	color: white;
}
</style>
<script>


	/* 상세보기 span태그 숨기기 */
	function hideSapn() {
		$("#dForm").hide();
		$("#dSpot").hide();
		$("#dTime").hide();
		$("#dGround").hide();
		$("#dLevel").hide();
		$("#dApp").hide();
		$("#dMemo").hide();
		$("#detailUpdate").hide();
		$("#deadLine").hide();

		$("#h_bar2").text("매치신청 수정하기");
	}
	/* 상세보기 input태그 숨기기 */
	function hideInput() {
		$("#dForm2").hide();
		$("#dSpot2").hide();
		$("#datepicker").hide();
		$("#dTime3").hide();
		$("#dGround2").hide();
		$("#dLevel2").hide();
		$("#dApp2").hide();
		$("#dMemo2").hide();
		$("#detailUpdateInfo").hide();
		$("#h_bar2").text("매치신청 상세보기");

	}
	/* 상세보기 input태그 보이기 */
	function showInput() {
		$("#dForm2").show();
		$("#dSpot2").show();
		$("#datepicker").show();
		$("#dTime3").show();
		$("#dGround2").show();
		$("#dLevel2").show();
		$("#dApp2").show();
		$("#dMemo2").show();
		$("#detailUpdateInfo").show();

	}

	/* 상세보기 span태그 보이기 */
	function showSapn() {
		$("#dForm").show();
		$("#dSpot").show();
		$("#dTime").show();
		$("#dGround").show();
		$("#dLevel").show();
		$("#dApp").show();
		$("#dMemo").show();
		$("#detailUpdate").show();
		$("#deadLine").show();
	}

	$(function() {
		//날짜
		$.datepicker.setDefaults({
			closeText : "닫기",
			prevText : "이전달",
			nextText : "다음달",
			currentText : "오늘",
			monthNames : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월",
					"9월", "10월", "11월", "12월" ],
			monthNamesShort : [ "1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월",
					"9월", "10월", "11월", "12월" ],
			dayNames : [ "일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일" ],
			dayNamesShort : [ "일", "월", "화", "수", "목", "금", "토" ],
			dayNamesMin : [ "일", "월", "화", "수", "목", "금", "토" ],
			weekHeader : "주",
			dateFormat : "yy-mm-dd",
			firstDay : 0,
			isRTL : false,
			showMonthAfterYear : true,
			yearSuffix : "년"
		})
		$("#datepicker").datepicker(
				{
					minDate : 0,

					/* to use in wix */
					onSelect : function(selected, event) {
						console.log(selected);
					
						
					}
				})
		
		
		
		
		//매치등록
		$("#btn_match_add").on("click", function(event) {
			location.href = "${pageContext.request.contextPath}/match/apply";
			event.preventDefault();
		});

		/* 상세보기클릭시 */
		$(".detailItem").click(function() {
			$("#detailDiv").show();
			var matchForm = $(this).find("td").eq(0).text();
			var spotName = $(this).find("td").eq(1).text();
			var time = $(this).find("td").eq(2).text();
			var name = $(this).find("td").eq(3).text();
			var application = $(this).find("td").eq(5).find("span").text();
			var ground = $(this).attr("data-ground");
			var tel = $(this).attr("data-tel");
			var level = $(this).attr("data-level");
			var context = $(this).attr("data-context");
			var mbNo = $(this).attr("data-mbNo");
			var gNo = $(this).attr("data-gNo");
			var sNo2 = $(this).attr("data-sNo"); 
			

			$("#dName").text(name);
			$("#dForm").text(matchForm);
			$("#dSpot").text(spotName);
			$("#dSpot").attr("data-sNo", sNo2);
			$("#dTime").text(time);
			$("#dGround").text(ground);
			$("#dGround").attr("data-gNo", gNo);
			$("#dTel").text(tel);
			$("#dLevel").text(level);
			$("#dApp").text(application);
			$("#dMemo").text(context); 
			$("#mbNo").text(mbNo);
			$("#postmbNo").val(mbNo);
			$("#postPage").val($(".active").text());
			
			var datePickerDate = $("#dTime").text().substring(0, 10);
			$("#datepicker").val(datePickerDate);
		})
 
		/* 수정하기 클릭시 */
		$("#detailUpdate").on("click", function(event) {
			var mbNo = $(this).next().next().text();
			hideSapn();
			showInput();
			$("#dGround2").empty();
			$("#dGround2").append("<option value='0'>구장 선택</option>"); 
			var matchDate1 = $("#dTime").text();             
			var matchDate2 = matchDate1.substring(11, 24);     
			var sNo = $("#dSpot").attr("data-sNo") ;
			var gNo2 = $("#dGround").attr("data-gNo") ;
			$.ajax({
				url:"match/appliy/"+sNo,
				type:"get",
				dataType:"json",
				success:function(res){
					console.log(res); 
					for (var i = 0; i < res.length; i++) {
						var gName = res[i].gName;
						var gNo = res[i].gNo;
						var $option = $("<option value="+gNo+">"+gName+"</option>"); 
						$("#dGround2").append(   $option  );
						
					}
					$("#dGround2").val(gNo2).attr("selected", "selected");
				}
			}) 
			
			
			
			$("#dForm2").val($("#dForm").text()).attr("selected", "selected"); 
			$("#dSpot2").val(sNo).attr("selected", "selected");  
			$("#dTime3").val(matchDate2).attr("selected", "selected");
			 
			$("#dLevel2").val($("#dLevel").text()).attr("selected", "selected");
			
			if($("#dApp").text()=="마감"){
				$("#dApp2").val("2").attr("selected", "selected");
			}else{
				$("#dApp2").val("1").attr("selected", "selected");  
			}
			
			
			$("#dMemo2").text($("#dMemo").text());
			
			event.preventDefault();
		});

		/* 마감하기 클릭시 */
		$("#deadLine")
				.on(
						"click",
						function(event) {
							var mbNo = $(this).next().text();
							var page = $(".active").text();

							var a = confirm("정말로 마감하시겠습니까?");
							if (a == false) {
								return false;
							}
							location.href = "${pageContext.request.contextPath }/match2?page="
									+ page + "&mbNo=" + mbNo;
							event.preventDefault();
						});
		
		
		
		//지점 select box 변경 될때
		$("#dSpot2").on("change", function() {
			 var sNo =  $("#dSpot2 :selected").val(); 
			$("#dGround2").empty();
			$("#dGround2").append("<option value='0'>구장 선택</option>");
			$.ajax({
				url:"match/appliy/"+sNo,
				type:"get",
				dataType:"json",
				success:function(res){
					console.log(res); 
					for (var i = 0; i < res.length; i++) {
						var gName = res[i].gName;
						var gNo = res[i].gNo;
						var $option = $("<option value="+gNo+">"+gName+"</option>"); 
						$("#dGround2").append(   $option  );
						
					}
				}
			}) 
			
		})
		
		
		
		
		
		
		
		
		
		
		

	})
	
	
	
	
</script>
<div id="video_wrap">
	<video id="v"
		src="${pageContext.request.contextPath}/resources/media/video element2.mp4"
		muted autoplay loop="loop">
	</video>
	<h2 id="main_title2">매치/용병</h2>
</div>

<div class="list_wrap">
	<div class="tab_wrap">
		<ul>

			<li class="on"><a
				href="http://localhost:8080/football/reservation">매치신청</a></li>

			<li><a href="http://localhost:8080/football/reservation/check">용병모집</a></li>

		</ul>
	</div>
	<div class="match_wrap">
		<h3 class="h_tit">매치신청</h3>
		<div id="match_table_wrap">
			<div class="table_top">
				<a href="#" class="btn_base match" id="btn_match_add"><span>매치등록</span></a>
			</div>


			<div class="table_wrap list">
				<table>
					<caption>매치신청 리스트</caption>

					<thead>
						<tr>
							<th scope="col" class="tb">매치형태</th>
							<th scope="col">지점구분</th>
							<th scope="col">매치일자</th>
							<th scope="col" class="tb">작성자</th>
							<th scope="col" class="tb">작성일자</th>
							<th scope="col">신청</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="matchList" items="${list}">
							<tr style="cursor: pointer" class="detailItem"
								data-ground="${matchList.mbGno.gName}"
								data-tel="${matchList.mbMember.mTel}"
								data-level="${matchList.mbLevel }"
								data-context="${matchList.mbContext }"
								data-mbNo="${matchList.mbNo }" 
								data-gNo="${matchList.mbGno.gNo}"
								data-sNo="${matchList.mbGno.gSno.sNo}"
								
								 >
								<td class="tb tbcolor">${matchList.mbMatchForm }</td>
								<td>${matchList.mbGno.gSno.sName }</td>
								<td>${matchList.mbTime }</td>
								<td class="tb">${matchList.mbMember.mName }</td>
								<td class="tb"><fmt:formatDate
										value="${matchList.mbRegdate }" pattern="yyyy-MM-dd" /></td>
								<c:if test="${matchList.mbApplication==1}">
									<td><span class="state">가능</span></td>
								</c:if>
								<c:if test="${matchList.mbApplication==0}">
									<td><span class="state end">마감</span></td>
								</c:if>

							</tr>

						</c:forEach>






					</tbody>
				</table>
			</div>

			<div id="page">
				<ul class="pagination">
					<c:if test="${pageMaker.prev }">
						<li><a class="btn_page prev"
							href="${pageContext.request.contextPath }/match?page=${pageMaker.startPage-10 }">
								&nbsp&nbsp </a></li>
					</c:if>
					<c:forEach var="idx" begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }">
						<li ${pageMaker.cri.page == idx ? 'class="active"' : '' }><a
							href="${pageContext.request.contextPath }/match?page=${idx }">${idx }</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next }">
						<li><a class="btn_page next"
							href="${pageContext.request.contextPath }/match?page=${pageMaker.endPage+1 }">
								&nbsp&nbsp </a></li>
					</c:if>
				</ul>

			</div>
		</div>

	</div>



	<div class="layer_popup class" id="detailDiv" style="display: none;">
		<h1 class="h_bar" id="h_bar2">매치신청 상세보기</h1>
		<button type="button" class="btn_closed close">
			<span class="hide">closed</span>
		</button>

		<div class="layer_cont">
			<div class="table_wrap" id="detail">
				<form action="${pageContext.request.contextPath}/match/update" method="POST">
					<input type="hidden" name="mbNo" id="postmbNo">
					<input type="hidden" name="page" id="postPage">
					<table>
						<tbody>
							<tr>

								<th scope="row">작성자</th>
								<td class="al_left"><span id="dName"></span></td>
								<th scope="row">매치형태</th>
								<td class="al_left"><span id="dForm"></span> <select
									class="select_all" name="mbMatchForm" id="dForm2">
										<option value="0">매치형태 선택</option>
										<option value="5:5">5:5</option>
										<option value="6:6">6:6</option>
								</select>
							</tr>
							<tr>
								<th scope="row">지점</th>
								<td class="al_left" colspan="3"><span id="dSpot"></span><select
									class="select_all" name="sNo" id="dSpot2">
										<option value="0">지점 선택</option>
										<c:forEach var="sList" items="${spotList }">
									<option value="${sList.sNo}">${sList.sName}</option>
								</c:forEach>
								</select></td>
							</tr>
							<tr>
								<th scope="row">매치일자</th>
								<td class="al_left" colspan="3"><span id="dTime"></span><input
									type="text" name="mbTime" id="datepicker"><select
									class="select_all" name="mbTime2" id="dTime3">
										<option value="0">시간 선택</option>
										<option value="08:00 ~ 10:00">08:00 ~ 10:00</option>
										<option value="10:00 ~ 12:00">10:00 ~ 12:00</option>
										<option value="12:00 ~ 14:00">12:00 ~ 14:00</option>
										<option value="14:00 ~ 16:00">14:00 ~ 16:00</option>
										<option value="18:00 ~ 20:00">18:00 ~ 20:00</option>
										<option value="20:00 ~ 22:00">20:00 ~ 22:00</option>
										<option value="22:00 ~ 24:00">22:00 ~ 24:00</option>
								</select></td>
							</tr>
							<tr>
								<th scope="row">구장</th>
								<td class="al_left" colspan="3"><span id="dGround"></span>
									<select class="select_all" name="gNo" id="dGround2">
										<option value="0">구장 선택</option>  
								</select></td>
							</tr>

							<tr>
								<th scope="row">연락처</th>
								<td class="al_left" colspan="3"><span id="dTel"></span></td>

							</tr>
							<tr>
								<th scope="row">팀 수준</th>
								<td class="al_left" colspan="3"><span id="dLevel"></span><select
									class="select_all" name="mbLevel" id="dLevel2">
										<option value="0">팀수준 선택</option>
										<option value="상">상</option>
										<option value="중상">중상</option>
										<option value="중">중</option>
										<option value="중하">중하</option>
										<option value="하">하</option>
								</select></td>
							</tr>
							<tr>
								<th scope="row">신청가능여부</th>
								<td class="al_left" colspan="3"><span id="dApp"></span><select
									class="select_all" name="mbApplication" id="dApp2">
										<option value="2">신청가능여부 선택</option>
										<option value="1">가능</option>
										<option value="0">마감</option>
								</select></td>
							</tr>
							<tr>
								<td class="al_left" colspan="4"><div id="dMemo"></div> <textarea
										id="dMemo2" class=input_fo name="mbContext" rows="" cols=""
										placeholder="내용을 입력하세요." style="width: 100%; height: 150px;"></textarea></td>
							</tr>

						</tbody>
					</table>


					<div class="btn_wrap">
						<a href="#" class="btn_big" id="detailUpdate">수정하기</a> <a href="#"
							class="btn_big" id="deadLine">마감하기</a><span id="mbNo"></span> <input
							type="submit" value="수정" class="btn_big" id="detailUpdateInfo">
					</div>
				</form>

			</div>

		</div>
	</div>

	<!-- 상세보기 x버튼 클릭시 -->
	<script>
		$(".btn_closed").click(function() {
			$("#detailDiv").hide();
			hideInput();
			showSapn();
		})
	</script>







</div>
</div>
<%@ include file="../../views/include/footer.jsp"%>