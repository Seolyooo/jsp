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
		//데이터베이스와 실제 연결 생성
		Connection conn =  DriverManager.getConnection(host, user, pass);
		
		//sql을 실행할 수 있는 statement 객체 생성
		Statement stmt = conn.createStatement();
		//sql문을 문자열로 작성
		String sql = "select * from user1";
		//stmt를 통해 sql 쿼리를 실행하고, 결과를 resultset을 받음
		//reslutset은 쿼리의 행들을 순차적으로 읽을 수 있게 해주는 객체
		ResultSet rs =stmt.executeQuery(sql);
		
		//resultset을 반복하며 각행의 데이터를 user1vo 객체로 변환하고 users 리스트에 추가함
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