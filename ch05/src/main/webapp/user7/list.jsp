<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="vo.User7vo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String host = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "Seolyooo";
	String pass = "1234";
	
	List<User7vo> users = new ArrayList<>();
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		Statement stmt = conn.createStatement();
		String sql="select * from user7";
		
		ResultSet rs=stmt.executeQuery(sql);
		
		while(rs.next()){
			User7vo vo = new User7vo();
			vo.setId(rs.getInt(1));
			vo.setName(rs.getString(2));
			vo.setAge(rs.getInt(3));
			vo.setEmail(rs.getString(4));
			
			users.add(vo);
			
		}
		rs.close();
		stmt.close();
		conn.close();
		
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
	<h3>user7 목록</h3>
	 <a href="../jdbc.jsp">처음으로</a>
	 <a href="./register.jsp">등록하기</a>
	 
	 <table border="1">
	 	<tr>
	 		<td>아이디</td>
	 		<td>이름</td>
	 		<td>나이</td>
	 		<td>메일</td>
	 		<td>관리</td>
	 	</tr>

		<%for(User7vo user7 :users){ %>

		<tr>
			<td><%=user7.getId() %></td>
			<td><%=user7.getName() %></td>
			<td><%=user7.getAge() %></td>
			<td><%=user7.getEmail() %></td>
			<td>
				<a href="./modify.jsp?id=<%=user7.getId()%>">수정</a>
				<a href="./delete.jsp?id=<%=user7.getId()%>">삭제</a>
			</td>
		</tr>	 
		
		<%} %>	
	 </table>
</body>
</html>