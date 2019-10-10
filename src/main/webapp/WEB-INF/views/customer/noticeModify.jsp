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
$(document).ready(function(){
    $("#btnMod").click(function(){
        
        var nTitle = $("#nTitle").val();
        var nContext = $("#nContext").val();
        if(nTitle == ""){
            alert("제목을 입력하세요");
            document.form.nTitle.focus();
            return;
        }
        if(nContext == ""){
            alert("내용을 입력하세요");
            document.form.nContext.focus();
            return;
        }
        
        // 폼에 입력한 데이터를 서버로 전송
        document.form.submit();
    });
});
</script>
<div id="video_wrap">
	<video id="v"
		src="${pageContext.request.contextPath}/resources/media/sub_01.mp4"
		muted autoplay loop="loop">
	</video> 
	<h2 id="main_title2">공지사항</h2>
</div>

<div class="list_wrap">
	<div class="tab_wrap">
		<ul>

			<li class="on"><a
				href="${pageContext.request.contextPath}/match">공지사항</a></li>

		</ul>
	</div>
	<div class="match_wrap">
		<form method="POST" name="form" id="f1" action="${pageContext.request.contextPath}/customer/noticeModify">

			<h3 class="h_tit">공지사항</h3>
			<div class="write_wrap">
				<h4 class="h_bar line">공지수정</h4>
				<div class="fl_wrap">
				<input type="hidden" name="nNo" value="${dto.nNo }">
					<div class="input_wrap">
						<p>제목</p>
						<input type="text" class="input_fo" title=""  style="width:100%" name="nTitle" value="${dto.nTitle }" id="nTitle">  
					</div>
					
					
				</div>
				
				<div class="memo" >
						<p>내용</p> 
						<textarea class=input_fo name="nContext" rows="" cols="" placeholder="내용을 입력하세요." style="width:100%; height:275px" id="nContext">${dto.nContext}</textarea>
				</div>
				
				
				<div class="btn_wrap">
						<button type="button" class="btn_big" id="btnMod">수정하기</button>
						<a href="${pageContext.request.contextPath}/customer" class="btn_big gray" id="del_match">취소하기</a>
				</div>
			</div>
		</form>


	</div>

</div>
<%@ include file="../../views/include/footer.jsp"%>