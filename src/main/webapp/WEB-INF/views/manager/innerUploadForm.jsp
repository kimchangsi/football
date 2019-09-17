<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/innerUpload" method="post" enctype="multipart/form-data">
		<p>
			<input type="text" name="sName" placeholder="작성자">
			<input type="text" name="sAddr" placeholder="주소">
			<input type="text" name="sTel" placeholder="전화번호">
			<input type="file" name="file" >
			<input type="submit" value="제출">
		</p>
	</form>
</body>
</html>
