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
	width: 700px;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
<script type="text/javascript">
	$(function() {

		$.ajax({
			url : "leagueMgn2",
			type : "get",
			dataType : "json",
			success : function(res) {
				console.log(res);
				for (var i = 0; i < res.length; i++) {
					var list = res[i];
					
					if( list.lQuarterfinals==0 && list.lSemifianl==0 && list.lFinal == 0){ //8강 리스트
						$("#draw").find("tr").eq(i+1).find("td").eq(0).text(list.lTeam.tName);	
					}else if( list.lQuarterfinals==0 && list.lSemifianl==1 && list.lFinal==0 && list.lState==0 ){ //4강 리스트
						
						if(list.lTeam.tName==$("#draw").find("tr").eq(1).find("td").eq(0).text() || list.lTeam.tName==$("#draw").find("tr").eq(2).find("td").eq(0).text()){
							$("#draw").find("tr").eq(1).find("td").eq(1).text(list.lTeam.tName);
						}else if(list.lTeam.tName==$("#draw").find("tr").eq(3).find("td").eq(0).text() || list.lTeam.tName==$("#draw").find("tr").eq(4).find("td").eq(0).text()){
							$("#draw").find("tr").eq(3).find("td").eq(1).text(list.lTeam.tName);
						}else if(list.lTeam.tName==$("#draw").find("tr").eq(5).find("td").eq(0).text() || list.lTeam.tName==$("#draw").find("tr").eq(6).find("td").eq(0).text()){
							$("#draw").find("tr").eq(5).find("td").eq(1).text(list.lTeam.tName);
						}else if(list.lTeam.tName==$("#draw").find("tr").eq(7).find("td").eq(0).text() || list.lTeam.tName==$("#draw").find("tr").eq(8).find("td").eq(0).text()){
							$("#draw").find("tr").eq(7).find("td").eq(1).text(list.lTeam.tName); 
						} 
					
					}else if(list.lQuarterfinals==0 && list.lSemifianl==0 && list.lFinal==1 && list.lState==0){ //결승 리스트
						
						if( list.lTeam.tName==$("#draw").find("tr").eq(1).find("td").eq(1).text() ||  list.lTeam.tName==$("#draw").find("tr").eq(3).find("td").eq(1).text() ){
							$("#draw").find("tr").eq(1).find("td").eq(2).text(list.lTeam.tName);
						}else if( list.lTeam.tName==$("#draw").find("tr").eq(5).find("td").eq(1).text() ||  list.lTeam.tName==$("#draw").find("tr").eq(7).find("td").eq(1).text()  ){
							$("#draw").find("tr").eq(5).find("td").eq(2).text(list.lTeam.tName);
						} 
					}else if(list.lQuarterfinals==0 && list.lSemifianl==0 && list.lFinal==1 && list.lState==1 && list.lOout==0){ //우승
						$("#draw").find("tr").eq(8).find("td").eq(0).text(list.lTeam.tName);
					}
									 
				}
			}  
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
			<td>1-1</td>
			<td rowspan="2">2-1</td>
			<td rowspan="4">3-1</td>
			<td rowspan="8">4-1</td>
		</tr>
		<tr>
			<td>1-2</td>
		</tr>
		<tr>
			<td>1-3</td>
			<td rowspan="2">2-3</td>
		</tr>
		<tr>
			<td>1-4</td>
		</tr>
		<tr>
			<td>1-5</td>
			<td rowspan="2">2-5</td>
			<td rowspan="4">3-5</td>
		</tr>
		<tr>
			<td>1-6</td>
		</tr>
		<tr>
			<td>1-7</td>
			<td rowspan="2">2-7</td>
		</tr>
		<tr>
			<td>1-8</td>
		</tr>
	</table>
</body>
</html>