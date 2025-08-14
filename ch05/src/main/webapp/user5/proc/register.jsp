<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		//드라이브 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//데이터베이스 접속
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		//sql 실행 객체 생성
		String sql= "insert into user5 values (?,?,?,?)";
		PreparedStatement psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, name);
		psmt.setString(2, gender);
		psmt.setString(3, age);
		psmt.setString(4, addr);
		
		//sql 실행
		psmt.executeUpdate();
		
		//종료
		psmt.close();
		conn.close();
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	//이동
	response.sendRedirect("../list.jsp");




%>