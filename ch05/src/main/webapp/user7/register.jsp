<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>user7 등록</h3>
	 <a href="../jdbc.jsp">처음으로</a>
	 <a href="./list.jsp">목록</a>
	 
	<form action="./proc/register.jsp" method="post">
	 <table border="1">
	 	<tr>
	 		<td>아이디</td>
	 		<td><input type="number" name="id" placeholder="아이디 입력"/> </td>
		</tr>
		<tr>
	 		<td>이름</td>
	 		<td><input type="text" name="name" placeholder="이름 입력"/> </td>
	 	</tr>
	 	<tr>	
	 		<td>나이</td>
	 		<td><input type="number" name="age" placeholder="나이 입력"/> </td>
	 	</tr>
	 	<tr>
	 		<td>메일</td>
	 		<td><input type ="text" name="age" placeholder="메일 입력"/> </td>
	 	</tr>
	 	<tr>
	 		<td colspan="2" align="right">
	 		<input type="submit" value="등록">
	 		</td>
	 	</tr>
	 	
	 </table>
	</form> 
</body>
</html>