<%@page import="vo.User1vo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>customer::modify</title>
	</head>
	<body>
		<h3>customer 수정</h3>
		
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./list.jsp">목록이동</a>
		
		<form action="./proc/modify.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name= "cid" placeholder="아이디 입력"/></td>
				</tr>
				<tr>
				
					<td>이름</td>
					<td><input type="text" name= "name" placeholder="이름 입력"/></td>
				</tr>
				<tr>
				
					<td>휴대폰</td>
					<td><input type="text" name= "hp" placeholder="휴대폰 입력"/></td>
				</tr>
				<tr>
				
					<td>주소</td>
					<td><input type="text" name= "address" placeholder="주소입력"/></td>
				</tr>
				<tr>
				
					<td>날짜</td>
					<td><input type="date" name= "rdate"/></td>
				</tr>
				<tr>					
					<td colspan="2" align="right">
						<input type="submit" value="수정하기"/>
					</td>
				</tr>			
			</table>		
		</form>		
	</body>
</html>