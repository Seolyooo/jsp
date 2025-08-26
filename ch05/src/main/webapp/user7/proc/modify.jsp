<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String email = request.getParameter("email");

	
	String host = "jdbc:oracle:thin:@localhost:1521:xe"; 
	String user = "Seolyooo";
	String pass = "1234";
	
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn= DriverManager.getConnection(host, user, pass);
		
		
		
		String sql = "UPDATE user7 SET name = ?, age = ?, email = ? WHERE id = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		
        psmt.setString(1, name);
        psmt.setInt(2, Integer.parseInt(age));  // age가 숫자라면 변환 필요
        psmt.setString(3, email);
        psmt.setInt(4, Integer.parseInt(id));
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
	
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	response.sendRedirect("../list.jsp");

%>