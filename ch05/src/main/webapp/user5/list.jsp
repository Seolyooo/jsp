<%@page import="vo.User1vo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="vo.User4vo"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String host = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "Seolyooo";
	String pass = "1234";
	
	List<User4vo> users = new ArrayList<>();
	
	try{
		//드라이브 연결
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//오라클하고 연결 디비하고 연결
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		
		//데이터 조회
		Statement stmt = conn.createStatement();
		//SQL 작성 및 실행 
		String sql = "select * from user4";
		//결과받기
		ResultSet rs = stmt.executeQuery(sql);
		
		//결과 출력
		while(rs.next()){
			User4vo vo = new User4vo();
			vo.setName(rs.getString(1));
			vo.setGender(rs.getString(2));
			vo.setAge(rs.getInt(3));
			vo.setAddr(rs.getString(4));
			
			users.add(vo);
			
			
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}


%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>user4 list</title>
	</head>
	<body>
		<h3>user4 목록</h3>
		<a href ="../jdbc.jsp">처음으로</a>
		<a href = "./register.jsp">등록하기</a>
		
		<table border ="1">
			<tr>
				<td>아이디</td>
				<td>이름</td>
				<td>휴대폰</td>
				<td>나이</td>
				<td>관리</td>			
			</tr>
			
			<% for(User4vo user4vo : users){ %>
				<tr>
					<td><%=user4vo.getName() %></td>
					<td><%=user4vo.getGender() %></td>
					<td><%=user4vo.getAge() %></td>
					<td><%=user4vo.getAddr() %></td>
					<td>
						<!-- 수정 -->
						<a href = "./modify.jsp?Name=<%= user4vo.getName()%>">수정</a>
						<!-- 삭제 -->
						<a href ="./delete.jsp?Name=<%=user4vo.getName()%>">삭제</a>
					</td>
				</tr>
			
			<%} %>
		</table>
	</body>
</html>