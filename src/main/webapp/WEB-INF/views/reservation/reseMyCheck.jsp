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

#main_title{
	margin-bottom:30px !important;   
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.2.0/handlebars.min.js"></script>
<script>
	$(function() {
		
		Handlebars.registerHelper("if",function(v1,v2,options){
			if(v1 == v2){
				return options.fn(this);//헬퍼 사이의 구문이 통채로 return
			}else{
				return ''; //빈 글자만 return
			}
			
		});
		
		//예약취소 클릭시
		$(document).on("click", ".cancel2", function(){
			var rNo = $(this).attr("data-rNo");
			
			var c = confirm("예약 취소하시겠습니까 ?");  
			
			if(c){ 
				$("#tb").empty();
				//예약 취소
				$.ajax({
						url : "${pageContext.request.contextPath}/reservation/update/"+rNo,
						type : "get",
						dataType : "json",
						success : function(res) {
							console.log(res);
							
													
							
							 var source = $("#template").html();
							var fn = Handlebars.compile(source);
							var str = fn(res);
							$("#tb").append(str); 
						}
					})
			}
			
		
		})
		
		
		
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

			<li><a href="${pageContext.request.contextPath}/reservation">대관예약</a></li>

			<li class="on"><a href="${pageContext.request.contextPath}/reservaiton/check">예약확인</a></li> 

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
					<tbody id="tb">
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

	<script id="template" type="text/x-handlebars-template">
		{{#each.}}
		<tr>
								<td>1</td>
								<td>{{rTime }}</td>
								<td>
									{{rPayTime }}
								</td>
								<td>{{rMember.mName }}( {{rMember.mId}} )</td>  
								<td>{{rGno.gName }}</td>
								<td>
									{{#if rCancel 0}}
										<span class='okSpan'>예약완료</span><button class='cancel2' data-rNo="{{rNo}}">취소하기</button>
									{{/if}}
									{{#if rCancel 1}}
										<span class='cancelSpan'>취소</span>
									{{/if}}
									
									
								</td>
		</tr>
		{{/each}}
		</script>

</div>
<%@ include file="../../views/include/footer.jsp"%>