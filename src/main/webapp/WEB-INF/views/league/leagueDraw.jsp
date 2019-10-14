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
	
	background: #2c3c57 url('${pageContext.request.contextPath}/resources/images/ground/bg_rese_start.png') no-repeat 0
		0;
	
}
#draw {
	width: 800px;
	height: 500px; 
	font-weight: bold;
	margin: 0 auto;
}

#teamList{
	width: 800px;
	
	margin: 0 auto;
	margin-top: 50px; 
}

#teamList td{
 text-align: center;
}
#teamList tr{
	background-color: #f1f1f1;
}

#teamList img{
	width: 80px;
	height: 80px;
}

#teamList,#teamList th,#teamList td{
	border-collapse: collapse;
	border: 1px solid black;
}

#draw, #draw th,#draw td {
	border-collapse: collapse;
}
#draw tr{
	background-color: #f1f1f1;
	 
}

#draw td{
	padding-left: 13px;
}

#draw tr:first-child{
	background-color: #2c3c57;
	color:white;
}
#teamList tr:first-child{
	background-color: #2c3c57;
	color:white;
	height: 50px;
}

#draw tr td:nth-child(1){
	border-left:2px solid #0067a0;  
}
#draw tr td:nth-child(2){
	border-left:2px solid #0067a0;  
}
#draw tr td:nth-child(3){
	border-left:2px solid #0067a0;    
}
#draw tr td:nth-child(4){
	border-left:2px solid #0067a0;  
	border-right: 2px solid #0067a0; 
}

#draw{
	border-bottom:  2px solid #0067a0;                         
	border-top:  2px solid black;
}

#draw th{
	border: 2px solid black;
}

#draw tr:nth-child(2n+1) td:nth-child(1){
border-bottom:  2px solid #0067a0;
}
#draw tr:nth-child(4n) td:nth-child(2){
border-bottom:  2px solid #0067a0;   
}

td{
	overflow: hidden;
}

.score{
	float:right;
	display:inline-block;
	width:30px;
	height: 30px;
	text-align: center;
	line-height:30px;
	margin-left:20px; 
	border: 1px solid #0080c7; 
	margin-right: 15px;
}

.rese_wrap{
	width: 960px;
	margin: 0 auto;
}


</style>
<script>
function getLeagueList() {
	var lKName2 = "${vo.lkName}" ; 
	//alert(lkName); 
	
	var json =  { lkName:lKName2 } ;
	var data = JSON.stringify(json);
	$.ajax({ 
		url : "leagueMgn4",
		type : "post",
		data : data,
		headers:{
			"Content-Type":"application/json"
		},
		dataType : "json",
		success : function(res) {
			console.log(res);
			for (var i = 0; i < res.list.length; i++) {
				var list = res.list[i];
				
				
				
				
				
				//대진표
				
				if( list.lQuarterfinals==1 && list.lSemifianl==0 && list.lFinal == 0){ //8강 리스트
					$("#draw").find("tr").eq(i+1).find("td").eq(0).find(".TeamName").text(list.lTeam.tName);	
					if(list.lState==1){
						$("#draw").find("tr").eq(i+1).find("td").eq(0).find(".score").text(list.lGoal);	
					}
				
				
					
				}else if( list.lQuarterfinals==0 && list.lSemifianl==1 && list.lFinal==0  ){ //4강 리스트
					
					if(list.lTeam.tName==$("#draw").find("tr").eq(1).find("td").eq(0).find(".TeamName").text() || list.lTeam.tName==$("#draw").find("tr").eq(2).find("td").eq(0).find(".TeamName").text()){
						$("#draw").find("tr").eq(1).find("td").eq(1).find(".TeamName").text(list.lTeam.tName);
						if(list.lState==1){
							$("#draw").find("tr").eq(1).find("td").eq(1).find(".score").text(list.lGoal);
						}
						
					}else if(list.lTeam.tName==$("#draw").find("tr").eq(3).find("td").eq(0).find(".TeamName").text() || list.lTeam.tName==$("#draw").find("tr").eq(4).find("td").eq(0).find(".TeamName").text()){
						$("#draw").find("tr").eq(3).find("td").eq(1).find(".TeamName").text(list.lTeam.tName);
						if(list.lState==1){
							$("#draw").find("tr").eq(3).find("td").eq(1).find(".score").text(list.lGoal);
						}
						
					}else if(list.lTeam.tName==$("#draw").find("tr").eq(5).find("td").eq(0).find(".TeamName").text() || list.lTeam.tName==$("#draw").find("tr").eq(6).find("td").eq(0).find(".TeamName").text()){
						$("#draw").find("tr").eq(5).find("td").eq(1).find(".TeamName").text(list.lTeam.tName);
						if(list.lState==1){
							$("#draw").find("tr").eq(5).find("td").eq(1).find(".score").text(list.lGoal);
						}
						
					}else if(list.lTeam.tName==$("#draw").find("tr").eq(7).find("td").eq(0).find(".TeamName").text() || list.lTeam.tName==$("#draw").find("tr").eq(8).find("td").eq(0).find(".TeamName").text()){
						$("#draw").find("tr").eq(7).find("td").eq(1).find(".TeamName").text(list.lTeam.tName); 
						if(list.lState==1){
							$("#draw").find("tr").eq(7).find("td").eq(1).find(".score").text(list.lGoal);
						}
						
					} 
				
				}else if(list.lQuarterfinals==0 && list.lSemifianl==0 && list.lFinal==1 ){ //결승 리스트
					
					if( list.lTeam.tName==$("#draw").find("tr").eq(1).find("td").eq(1).find(".TeamName").text() ||  list.lTeam.tName==$("#draw").find("tr").eq(3).find("td").eq(1).find(".TeamName").text() ){
						$("#draw").find("tr").eq(1).find("td").eq(2).find(".TeamName").text(list.lTeam.tName);
						if(list.lState==1){
							$("#draw").find("tr").eq(1).find("td").eq(2).find(".score").text(list.lGoal);
						}
						
					}else if( list.lTeam.tName==$("#draw").find("tr").eq(5).find("td").eq(1).find(".TeamName").text() ||  list.lTeam.tName==$("#draw").find("tr").eq(7).find("td").eq(1).find(".TeamName").text()  ){
						$("#draw").find("tr").eq(5).find("td").eq(2).find(".TeamName").text(list.lTeam.tName);
						if(list.lState==1){
							$("#draw").find("tr").eq(5).find("td").eq(2).find(".score").text(list.lGoal);
						}
						
					} 
				}else if( list.lFinal==2){ //우승
					$("#draw").find("tr").eq(1).find("td").eq(3).find(".TeamName").text(list.lTeam.tName);
				}
								 
			}
			
			
			//팀리스트
			for (var i = 0; i < res.tList.length; i++) {
				var tList = res.tList[i];
				var str = "<tr><td>"+(i+1)+"</td> <td><img src='${pageContext.request.contextPath}/resources/images/team/"+tList.lTeam.tMark+"'></td><td>"+tList.lTeam.tName+" </td><td>"+tList.lLeagueName.lkName+"</td><td>"+ tList.lGoal+"골</td><tr>"
				$("#teamList").append(str);
			}
			
			
			
		}  
	})
}



	

	$(function() {
		getLeagueList();

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

			<li ><a
				href="${pageContext.request.contextPath}/league">리그</a></li>
			<li class="on"><a href="${pageContext.request.contextPath}/league/check">리그현황</a></li>

		</ul>
	</div>
	<div class="rese_wrap">
	<h3 class="h_tit">${vo.lkName} 대진표</h3>
		<table id="draw">
		<tr>
			<th>8강</th>
			<th>4강</th>
			<th>결승</th>
			<th>우승</th>
		</tr>

		<tr>
			<td><span class="TeamName"></span><span  class="score"></span></td>  
			<td rowspan="2"><span class="TeamName"></span><span  class="score"></span></td>
			<td rowspan="4"><span class="TeamName"></span><span  class="score"></span></td>
			<td rowspan="8"><span class="TeamName"></span></td>
		</tr>
		<tr>
			<td><span class="TeamName"></span><span  class="score"></span></td>
		</tr>
		<tr>
			<td><span class="TeamName"></span><span  class="score"></span></td>
			<td rowspan="2"><span class="TeamName"></span><span  class="score"></span></td>
		</tr>
		<tr>
			<td><span class="TeamName"></span><span  class="score"></span></td>
		</tr>
		<tr>
			<td><span class="TeamName"></span><span  class="score"></span></td> 
			<td rowspan="2"><span class="TeamName"></span><span  class="score"></span></td>
			<td rowspan="4"><span class="TeamName"></span><span  class="score"></span></td>
		</tr>
		<tr>
			<td><span class="TeamName"></span><span  class="score"></span></td>
		</tr>
		<tr>
			<td><span class="TeamName"></span><span  class="score"></span></td>
			<td rowspan="2"><span class="TeamName"></span><span  class="score"></span></td>
		</tr>
		<tr> 
			<td><span class="TeamName"></span><span  class="score"></span></td>
		</tr>
	</table>
	
	<table id="teamList">
		<tr>
			<th>순번</th>
			<th>팀 마크</th>
			<th>팀 이름</th>
			<th>참가 리그명</th>
			<th>리그 득점 현황</th>
		</tr>
	</table>

	</div>



</div>
<%@ include file="../../views/include/footer.jsp"%>