<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>redirect1</title>
	</head>
	<body>
	<h3>redirect2 페이지</h3>
	<%
	//네이버 페이지로 리다이렉트 (다시요청)
		response.sendRedirect("https://naver.com");
	%>
	</body>
</html>