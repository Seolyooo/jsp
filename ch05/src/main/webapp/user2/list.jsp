<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.User1vo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

		String host = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "Seolyooo";
		String pass = "1234";
		
		
		List<User1vo> users = new ArrayList<>();
	try{
		
		//드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn =  DriverManager.getConnection(host, user, pass);
		
		Statement stmt = conn.createStatement();
		String sql = "select * from user1";
		ResultSet rs =stmt.executeQuery(sql);
		
		while(rs.next()){
			User1vo vo = new User1vo(); 
			vo.setUser_id(rs.getString(1));
			vo.setName(rs.getString(2));
			vo.setHp(rs.getString(3));
			vo.setAge(rs.getInt(4));
			
			users.add(vo);

		}
		
		
		rs.close();
		stmt.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}


%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>user1 list</title>
	</head>
	<body>
		<h3>user1 목록</h3>
		<a href ="../jdbc.jsp">처음으로</a>
		<a href ="./register.jsp">등록하기</a>
		
		<table border ="1">
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>휴대폰</td>
			<td>나이</td>
			<td>관리</td>
		</tr>
		
		<% for(User1vo user1 : users){ %>
		
		
		<tr>
			<td><%=user1.getUser_id() %></td>
			<td><%=user1.getName() %></td>
			<td><%=user1.getHp() %></td>
			<td><%=user1.getAge() %></td>
			<td>
			<!-- 수정하고자 하는 사용자 아이디를 modify.jsp로 전송 -->
					<a href="./modify.jsp?user_id=<%= user1.getUser_id() %>">수정</a>
					
					<!-- 삭제하고자 하는 사용자 아이디를 delete.jsp로 전송 -->
					<a href="./delete.jsp?user_id=<%= user1.getUser_id() %>">삭제</a>
				</td>
		</tr>
		<%} %>
		
		</table>
	</body>
</html>