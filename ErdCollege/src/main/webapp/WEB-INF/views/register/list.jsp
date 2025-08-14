<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>수강목록</title>
	</head>
	<body>
		<h3>수강목록</h3>
		
		<a href="/ErdCollege">처음으로</a>
		<a href="ErdCollege/lecture/register.do">등록하기</a>
		
		
		
		
		<table border="1">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>휴대폰</th>
				<th>주소</th>
				<th>가입일</th>
				<th>관리</th>
			</tr>			
			
			
			<c:forEach var="dto" items="${dtoList}">
			<tr>
				<td>${dto.regStdNo}</td>
				<td>${dto.regLecNo}</td>
				<td>${dto.regMidScore}</td>
				<td>${dto.regFinalScore}</td>
				<td>${dto.regGrade}</td>
				<td>					
					<a href="">수강신청</a>					
				</td>
			</tr>			
			</c:forEach>
		</table>		
	</body>
</html>