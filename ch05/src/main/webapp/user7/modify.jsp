<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String host = "jdbc:oracle:thin:@localhost:1521:xe"; 
	String user = "seolyooo";
	String pass = "1234";
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");		
		Connection conn =DriverManager.getConnection(host, user, pass);
		
		String sql="select * from user7 where id =?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString
		
		
		
	}catch (Exception e){
		e.printStackTrace();
	}

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>user7 수정</h3>
	 <a href="../jdbc.jsp">처음으로</a>
	 <a href="./list">목록</a>
	 
	<form action="./proc/modify.jsp" method="post">
	 <table border="1">
	 	<tr>
	 		<td>아이디</td>
	 		<td><input type="number" name="id"  readonly placeholder="아이디 입력"/> </td>
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
	 		<input type="submit" value="수정">
	 		</td>
	 	</tr>
	 	
	 </table>
	</form> 
</body>
</html>