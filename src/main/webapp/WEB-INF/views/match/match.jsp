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

.tbcolor{
	color:#4d90fe !important;
	font-size:20px !important;
	font-weight: bold !important;
}

/* 페이징 */
.pagination{
		list-style: none;
		overflow: hidden;
		clear: both;
		width:600px;
		margin:20px auto;
		padding:0;
	}
	.pagination li{
		float: left;
		width:40px;
		height:40px;
		line-height:40px;
		text-align:center;
		border: 1px solid #cecece;
		background: white;
		margin-left: 10px;
		
	}
	.pagination li a{
		font-weight: normal;
		color: #afafaf;

	}
	.active{
		background: black !important;
		
	}
	.active a{
		font-weight: bold !important;
		color:white !important;
	}
	
	 a.btn_page.prev	{margin:0; background:#fff url('resources/images/common/icn_page_prev.png') no-repeat center center;}
	a.btn_page.next	{margin:0; background:#fff url('resources/images/common/icn_page_next.png') no-repeat center center;}
  
</style>
<script>
	$(function() {
		$("#btn_match_add").on("click", function(event) {
			location.href = "${pageContext.request.contextPath}/match/apply";
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
						<tr>
							<td class="tb tbcolor" >${matchList.mbMatchForm }</td>
							<td>${matchList.mbGno.gSno.sName }</td>
							<td>${matchList.mbTime }</td>
							<td class="tb">${matchList.mbMember.mName }</td>
							<td class="tb"><fmt:formatDate value="${matchList.mbRegdate }" pattern="yyyy-MM-dd"/>  </td>
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
					<li><a class="btn_page prev" href="${pageContext.request.contextPath }/match?page=${pageMaker.startPage-10 }"> &nbsp&nbsp </a></li>
				</c:if>
				<c:forEach var="idx" begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }">
					<li ${pageMaker.cri.page == idx ? 'class="active"' : '' }><a
						href="${pageContext.request.contextPath }/match?page=${idx }">${idx }</a></li>
				</c:forEach>
				<c:if test="${pageMaker.next }">
					<li><a class="btn_page next" href="${pageContext.request.contextPath }/match?page=${pageMaker.endPage+1 }"> &nbsp&nbsp </a></li>
				</c:if>
			</ul>

	</div>
		</div>

	</div>



</div>
<%@ include file="../../views/include/footer.jsp"%>