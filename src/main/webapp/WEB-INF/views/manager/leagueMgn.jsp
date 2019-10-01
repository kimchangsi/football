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
	table{
		width: 700px;  
	}
	
	table,th,td {
		border: 1px solid black;
		border-collapse: collapse;
	}
</style>
<script type="text/javascript">
	$(function() {
		$(".a").click(function() {
			
			
			
		})
		
	})
</script>
</head>
<body>
	<table>
		<tr>
			<th>8강</th>
			<th>4강</th>
			<th>결승</th>
			<th>우승</th>
		</tr>
		
		<tr>
			<td>1-1 <c:if test="${list[0]!=null}"> 
				<span class="s">${list[0].lTeam.tName }</span>
			</c:if> <button class="a">승자</button> </td>  
			<td rowspan="2">2-1</td>
			<td rowspan="4">3-1</td>
			<td rowspan="8">3-1</td>
		</tr>
		<tr>
			<td>1-2<c:if test="${list[1]!=null}"> 
				${list[1].lTeam.tName }
			</c:if></td>
		</tr>
		<tr>
			<td>1-3<c:if test="${list[2]!=null}"> 
				${list[2].lTeam.tName }
			</c:if></td>
			<td rowspan="2">2-3</td>
		</tr>
		<tr> 
			<td>1-4<c:if test="${list[3]!=null}"> 
				${list[3].lTeam.tName }
			</c:if></td>
		</tr>
		<tr>
			<td>1-5<c:if test="${list[4]!=null}"> 
				${list[4].lTeam.tName }
			</c:if></td>
			<td rowspan="2">2-5</td>
			<td rowspan="4">3-5</td>
		</tr>
		<tr>
			<td>1-6<c:if test="${list[5]!=null}"> 
				${list[5].lTeam.tName }
			</c:if></td>
		</tr>
		<tr>
			<td>1-7<c:if test="${list[6]!=null}"> 
				${list[6].lTeam.tName }
			</c:if></td>
			<td rowspan="2">2-7</td>
		</tr>
		<tr>
			<td>1-8<c:if test="${list[7]!=null}">  
				${list[7].lTeam.tName }
			</c:if></td>
		</tr>
	</table>
</body>
</html>