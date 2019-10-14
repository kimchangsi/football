<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Insert title here</title>

<link
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css"
	rel="stylesheet">
<style>
#content {
	padding-top: 50px !important;
}
#title_1{
	margin-bottom: 30px;	
}

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
#leagueKind{
	margin-bottom: 15px;
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
function getLeagueList(lkName) {
	$.ajax({
		url : "manager/leagueMgn2/" + lkName,
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
		
		//리그선택시
		$("#leagueKind").on("change", function() {
			var lkName = $("#leagueKind :selected").val(); //선택된값 가져오기
			
			if(lkName!=0){
				$(".TeamName").empty(); 
				$(".score").empty();
				getLeagueList(lkName);
			}else{
				$(".TeamName").empty();  
				$(".score").empty(); 
			}
		})
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
			var lkName2 = $("#leagueKind :selected").val(); //리그 선택된값 가져오기
			var score1 = $("#t1Score").val();
			var score2 = $("#t2Score").val();
			
			
			var type = $("#leagueGame :selected").attr("data-type");   
			var json = "";
			
			
			if(type=="8강"){
				alert("8강");
				json = [ { lTeam:{tName:team1}, lLeagueName:{lkName:lkName2}, lGoal:score1,lQuarterfinals:1, }, {lTeam:{tName:team2},lLeagueName:{lkName:lkName2}, lGoal:score2,lQuarterfinals:1},{lSemifianl:1} ];
			}else if(type=="4강"){
				alert("4강");
				json = [{lTeam:{tName:team1},lLeagueName:{lkName:lkName2}, lGoal:score1,lSemifianl:1}, {lTeam:{tName:team2}, lLeagueName:{lkName:lkName2},lGoal:score2,lSemifianl:1},{lFinal:1}];
			}else if(type=="결승"){
				alert("결승");
				json = [{lTeam:{tName:team1}, lLeagueName:{lkName:lkName2},lGoal:score1,lFinal:1}, {lTeam:{tName:team2},lLeagueName:{lkName:lkName2}, lGoal:score2,lFinal:1},{lFinal:2}];
			}
			
			var data = JSON.stringify(json);
			
		 	$.ajax({
				url : "manager/leagueMgn3",
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
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">관리자페이지</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item"><a class="nav-link" href="index.html">
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Interface</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i> <span>Components</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Components:</h6>
						<a class="collapse-item" href="buttons.html">Buttons</a> <a
							class="collapse-item" href="cards.html">Cards</a>
					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>Utilities</span>
			</a>
				<div id="collapseUtilities" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Utilities:</h6>
						<a class="collapse-item" href="utilities-color.html">Colors</a> <a
							class="collapse-item" href="utilities-border.html">Borders</a> <a
							class="collapse-item" href="utilities-animation.html">Animations</a>
						<a class="collapse-item" href="utilities-other.html">Other</a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Addons</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item active"><a class="nav-link" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-folder"></i> <span>Pages</span>
			</a>
				<div id="collapsePages" class="collapse show"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="login.html">Login</a> <a
							class="collapse-item" href="register.html">Register</a> <a
							class="collapse-item" href="forgot-password.html">Forgot
							Password</a>
						<div class="collapse-divider"></div>
						<h6 class="collapse-header">Other Pages:</h6>
						<a class="collapse-item" href="404.html">404 Page</a> <a
							class="collapse-item active" href="blank.html">Blank Page</a>
					</div>
				</div></li>

			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="charts.html">
					<i class="fas fa-fw fa-chart-area"></i> <span>Charts</span>
			</a></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="tables.html">
					<i class="fas fa-fw fa-table"></i> <span>Tables</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="text-gray-800" id="title_1">관리자 페이지</h1>

					<h2 class="h3">- 지점 등록</h2>
					<div class="card mb-4 py-3 border-left-primary">
						<div class="card-body">
							<form action="${pageContext.request.contextPath }/innerUpload"
						method="post" enctype="multipart/form-data">
						<p>
							<input type="text" name="sName" placeholder="지점명"> <input
								type="text" name="sAddr" placeholder="주소"> <input
								type="text" name="sTel" placeholder="전화번호"> <input
								class="btn btn-primary btn-icon-split" type="file" name="file">
							<input type="submit" value="제출">
						</p>
					</form>
						</div>
					</div>
					
					
			 
              
              
              
              	<!-- 리그 등록-->
					<h2 class="h3">- 리그 관리</h2>
					<div class="card mb-4 py-3 border-left-primary">
                <div class="card-body">
                <select id="leagueKind"> 
			<option value="0">리그를 선택하세요</option>
			<c:forEach var="lkList" items="${list }">
								<option value="${lkList.lkName }">${lkList.lkName }</option>
							</c:forEach>
		</select> 
		<br>
                
                
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
                </div>
              </div>
              
              
              
              
					
				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2019</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script
		src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>


</body>
</html>
