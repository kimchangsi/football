<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
table {
	width: 800px;
	height: 500px; 
	font-weight: bold;
}

table, th, td {
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



#leagueGame{
	display: none;
}

#scoreInput{
	display: none;
}
</style>
<script type="text/javascript">
function getLeagueList() {
	$.ajax({
		url : "leagueMgn2",
		type : "get",
		dataType : "json",
		success : function(res) {
			console.log(res);
			for (var i = 0; i < res.length; i++) {
				var list = res[i];
				
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
		}  
	})
}


function getLeagueListScore(leagueSelVal) {
	if(leagueSelVal=="8강"){
	 var t1 = $("#draw").find("tr").eq(1).find("td").eq(0).find(".TeamName").text(); //1번팀
	 var t2 = $("#draw").find("tr").eq(2).find("td").eq(0).find(".TeamName").text(); //2번팀
	 var t3 = $("#draw").find("tr").eq(3).find("td").eq(0).find(".TeamName").text(); //3번팀
	 var t4 = $("#draw").find("tr").eq(4).find("td").eq(0).find(".TeamName").text(); //4번팀
	 var t5 = $("#draw").find("tr").eq(5).find("td").eq(0).find(".TeamName").text(); //5번팀
	 var t6 = $("#draw").find("tr").eq(6).find("td").eq(0).find(".TeamName").text(); //6번팀
	 var t7 = $("#draw").find("tr").eq(7).find("td").eq(0).find(".TeamName").text(); //7번팀
	 var t8 = $("#draw").find("tr").eq(8).find("td").eq(0).find(".TeamName").text(); //8번팀
	  
	  $("#leagueGame").append("<option data-type='8강' data-team1="+t1+" data-team2="+t2+">"+t1+"VS"+ t2 +"</option>"); 
	  $("#leagueGame").append("<option  data-type='8강' data-team1="+t3+" data-team2="+t4+">"+t3+"VS"+ t4 +"</option>"); 
	  $("#leagueGame").append("<option  data-type='8강' data-team1="+t5+" data-team2="+t6+">"+t5+"VS"+ t6 +"</option>"); 
	  $("#leagueGame").append("<option  data-type='8강' data-team1="+t7+" data-team2="+t8+">"+t7+"VS"+ t8 +"</option>");
	  
	}else if(leagueSelVal=="4강"){
		var t1 = $("#draw").find("tr").eq(1).find("td").eq(1).find(".TeamName").text(); 
		var t2 = $("#draw").find("tr").eq(3).find("td").eq(1).find(".TeamName").text();
		var t3 = $("#draw").find("tr").eq(5).find("td").eq(1).find(".TeamName").text();
		var t4 = $("#draw").find("tr").eq(7).find("td").eq(1).find(".TeamName").text();
		
		 $("#leagueGame").append("<option  data-type='4강' data-team1="+t1+" data-team2="+t2+">"+t1+"VS"+ t2 +"</option>");
		  $("#leagueGame").append("<option data-type='4강' data-team1="+t3+" data-team2="+t4+">"+t3+"VS"+ t4 +"</option>");
		
	}else if(leagueSelVal=="결승"){
		var t1 = $("#draw").find("tr").eq(1).find("td").eq(2).find(".TeamName").text(); 
		var t2 = $("#draw").find("tr").eq(5).find("td").eq(2).find(".TeamName").text();
		$("#leagueGame").append("<option data-type='결승' data-team1="+t1+" data-team2="+t2+">"+t1+"VS"+ t2 +"</option>");             
		
	}
}
	

	$(function() {
		getLeagueList();
		
		
		
		
		//경기그룹 선택시
		$("#leagueGroup").on("change", function() {
			var leagueSelVal = $("#leagueGroup :selected").val();
			$("#leagueGame").empty();
			$("#leagueGame").append("<option value='0'>경기를 선택하세요</option>"); 
			if(leagueSelVal!=0){
				getLeagueListScore(leagueSelVal);
				$("#scoreInput").hide();  
				$("#leagueGame").show(); 
			}else{
				$("#scoreInput").hide(); 
			}
		})
		
		
			// 경기선택 시
		$("#leagueGame").on("change", function() {
			var team1 = $("#leagueGame :selected").attr("data-team1");
			var team2 = $("#leagueGame :selected").attr("data-team2");
			
			if(team1!=null){
				$("#t1Name").text(team1);
				$("#t2Name").text(team2); 
				$("#scoreInput").show();  
			}else{
				$("#scoreInput").hide(); 
			}
		})
		
		//점수등록버튼 클릭시
		$("#resist").click(function() {
			var team1 = $("#t1Name").text();
			var team2 = $("#t2Name").text();
			
			var score1 = $("#t1Score").val();
			var score2 = $("#t2Score").val();
			
			
			var type = $("#leagueGame :selected").attr("data-type");   
			var json = "";
			
			
			if(type=="8강"){
				alert("8강");
				json = [ {lTeam:{tName:team1}, lGoal:score1,lQuarterfinals:1}, {lTeam:{tName:team2}, lGoal:score2,lQuarterfinals:1},{lSemifianl:1} ];
			}else if(type=="4강"){
				alert("4강");
				json = [{lTeam:{tName:team1}, lGoal:score1,lSemifianl:1}, {lTeam:{tName:team2}, lGoal:score2,lSemifianl:1},{lFinal:1}];
			}else if(type=="결승"){
				alert("결승");
				json = [{lTeam:{tName:team1}, lGoal:score1,lFinal:1}, {lTeam:{tName:team2}, lGoal:score2,lFinal:1},{lFinal:2}];
			}
			
			var data = JSON.stringify(json);
			
		 	$.ajax({
				url : "leagueMgn3",
				type : "post",
				headers:{
					"Content-Type":"application/json"
				},
				data:data,
				dataType : "json",
				success : function(res) {
					console.log(res);
					
				}  
			}) 
		})
		
		
		

	})
</script>
</head>
<body>
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
	
	<div id="scoreInputWrap">
		<h2>점수입력</h2>
		<select id="leagueGroup"> 
			<option value="0">경기그룹을 선택하세요</option>
			<option value="8강">8강</option>
			<option value="4강">4강</option> 
			<option value="결승">결승</option>
		</select>
		<select id="leagueGame">
			<option value="0">경기를 선택하세요</option> 
			
		</select>
		
		<div id="scoreInput">
			<span id="t1Name"></span><input type="text" id="t1Score">
			<p></p>
			<span id="t2Name"></span><input type="text" id="t2Score">
			<p></p>
			<button id="resist">등록</button>
		</div>
	</div>
</body>
</html>