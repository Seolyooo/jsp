<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>user6 등록</title>
	</head>
	<body>
	
		<h3>user6 등록</h3>
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./list.jsp">목록이동</a>	
		
		<form action="./proc/register.jsp" method = "post">
			<table border = "1">
				
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" placeholder="이름입력"/> </td>
				</tr>
				<tr>
					<td>성별</td>
					<td colspan="2">
					<label><input type ="radio" name="gender" value="m"/>m </label>
					<label><input type ="radio" name="gender" value="f"/>f </label>
					</td>
				</tr>	
				
				<tr>
					<td>나이</td>
					<td><input type="number" name="age" placeholder="나이입력"/> </td>
				</tr>		
				
				<tr>
					<td>주소</td>
					<td><input type ="text" name="addr" placeholder="주소 입력"/> </td>
				</tr>
				
				<tr>
					<td colpsan="2" align="right">
					<input type ="submit" value="등록하기"/>
					</td>
				</tr>
			
			</table>
		
		</form>	
	</body>
</html>

