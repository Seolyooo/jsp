<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>user2 목록</h2>
	<a href ="/ch09">처음으로</a>
	<a href ="/ch09/user2/register.do">등록하기</a>
	
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>나이</th>
			<th>관리</th>
		</tr>
		
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td>
				<a href="/ch09/user2/modify.do?user_id=">수정</a>
				<a href="/ch09/user2/modify.do?user_id=">삭제</a>
			</td>
		
		</tr>
	
	</table>

</body>
</html>