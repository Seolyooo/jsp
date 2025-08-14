<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//전송데이터 수신
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String age = request.getParameter("age");
	String addr = request.getParameter("addr");

	
	String host = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "Seolyooo";
	String pass = "1234";
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		Statement stmt = conn.createStatement();
		
		String sql = "update user6 set hp = ?, age = ? where name = ?";
			
		stmt.executeUpdate(sql);
		
		stmt.close();
		conn.close();
		
		
	}catch(Exception e){
		e.printStackTrace();
		
	}

	response.sendRedirect("../list.jsp");

%>