<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../views/include/header.jsp"%>
<style>
	#video_wrap{
		position: relative;
		width: 100%;
		height: 460px;
	}
	
	#video_wrap #main_title{
		position: absolute;
		left: 360px;
		bottom: 15px;
		font-size: 80px;
		color: white;
	}
	.title_wrap{
		width: 100%;
		height: 85px;
		background-color: #2c3c57;
	}
	
	.sub_title{
		width: 1200px;
		margin: 0 auto;
		height: 100%;
	}
	.sub_title2{
		width: 400px;
		background: #192336;
		height: 100%;
	}
	
	.sub_title2 h2{
		padding-top: 25px;
		padding-left:50px;
		color: white;	
	}
	
	#content_wrap{
		width: 100%;
	}
</style>
<div id="video_wrap">
<video id="v" src="${pageContext.request.contextPath}/resources/media/sub_01.mp4" width="100%" height="460px" muted autoplay loop="loop">
</video>
<h2 id="main_title">지점현황</h2>
</div>
<div class="title_wrap">
		<div class="sub_title">
			<div class="sub_title2">
			<h2>전체 지점</h2>
			</div>
		</div>
</div>
<div class="content_wrap">
	<p>sfgsdfgs1</p>
	<p>2</p>
	<p>3</p>  
	<p>4</p>
	

</div>

<%@ include file="../../views/include/footer.jsp"%>