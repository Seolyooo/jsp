<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	// 전송 데이터 수신
	String seqStr = request.getParameter("seq");
	Integer seq = null;
	if(seqStr != null && !seqStr.isEmpty()){
	    seq = Integer.parseInt(seqStr);
	}
	
	String host = "jdbc:oracle:thin:@localhost:1521:xe"; 
	String user = "Seolyooo";
	String pass = "1234";
	
	try {
	
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		PreparedStatement psmt = conn.prepareStatement("DELETE FROM USER6 WHERE seq = ?");
		psmt.setInt(1, seq);
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	// 목록이동
	response.sendRedirect("./list.jsp");
%>