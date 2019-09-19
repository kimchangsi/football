<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../views/include/header.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common2.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/commonH.css" type="text/css">
<style>
.btn_base.match span	{display:inline-block; padding-right:50px; background:url('resources/images/icon_btn_match.png') no-repeat right center}

#match_table_wrap{
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

.table_top{
	text-align: right;
}


</style>
<script>

	$(function() {
		 $("#btn_match_add").on("click",function(event){
			 location.href="${pageContext.request.contextPath}/match/apply";
			 event.preventDefault();
	     });
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

			<li class="on"><a href="http://localhost:8080/football/reservation">매치신청</a></li>

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
								<th scope="col" class="tb">신청가능팀</th>
								<th scope="col" class="tb">작성자</th>
								<th scope="col" class="tb">작성일자</th>
								<th scope="col">신청</th>
							</tr>
						</thead>
						<tbody>

							<tr >
								<td class="tb"><strong>6 vs 6</strong></td>
								<td>전주 완산점</td>
								<td>2019.09.20(금)   18:00 ~ 19:00</td>
								<td class="tb">1팀</td>
								<td class="tb">고종찬</td>
								<td class="tb">2019.09.18</td>
								<td>
								
									<span class="state">가능</span>
															
								</td>
							</tr>

							<tr > 
								<td class="tb"><strong>6 vs 6</strong></td>   
								<td>동대전점 </td>
								<td>2019.09.20(금)   22:00 ~ 24:00</td>
								<td class="tb">1팀</td>
								<td class="tb">안준범</td>
								<td class="tb">2019.09.17</td>
								<td>
								
									<span class="state">가능</span>
															
								</td>
							</tr>

							
 
						</tbody>
					</table>
				</div>		
			</div>

	</div>



</div>
<%@ include file="../../views/include/footer.jsp"%>