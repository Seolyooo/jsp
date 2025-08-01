<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="vo.User6vo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%
	String host = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "Seolyooo";
	String pass = "1234";
	
	List<User6vo> users = new ArrayList<>();
	
	try{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		Statement stmt = conn.createStatement();
		String sql = "select * from user6";
		
		ResultSet rs = stmt.executeQuery(sql);
		
		System.out.println(rs);
		
		while(rs.next()){
			User6vo vo = new User6vo();
			vo.setSeq(rs.getInt(1));
			vo.setName(rs.getString(2));
			vo.setGender(rs.getString(3));
			vo.setAge(rs.getInt(4));
			vo.setAddr(rs.getString(5));
			
			users.add(vo);
			
			
			
		}
		System.out.println(users);

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
		<title>user 6</title>
	</head>
	<body>
		<h3>user 6 목록</h3>
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./register.jsp">등록하기</a>
		
		<table border = "1">
			<tr>
				<td>번호</td>
				<td>이름</td>
				<td>성별</td>
				<td>나이</td>
				<td>주소</td>
				<td>관리</td>
				
			</tr>	
			<% for(User6vo user6vo : users) {%>
				<tr>
					<td><%= user6vo.getSeq() %> </td>
					<td><%= user6vo.getName() %> </td>
					<td><%= user6vo.getGender() %> </td>
					<td><%= user6vo.getAge() %> </td>
					<td><%= user6vo.getAddr() %> </td>
					<td>
						<a href ="./modify.jsp?seq=<%=user6vo.getSeq() %>">수정</a>
						<a href ="./delete.jsp?seq=<%=user6vo.getSeq() %>">삭제</a>
					
					</td>
				</tr>
				
			<%} %>
			
		</table>
		
	</body>
</html>