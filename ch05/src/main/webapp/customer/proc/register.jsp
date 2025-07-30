<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//전송데이터 수신
	String cid = request.getParameter("cid");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String address = request.getParameter("address");
	String rdate = request.getParameter("rdate");

		
	try{
		
		//dbcp 커넥션풀 객체 가져오기
		Context initCtx = new InitialContext();
		Context ctx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) ctx.lookup("jdbc/seolyooo");
		
		//커넥풀에서 접속 커넥션 가져오기
		Connection conn = ds.getConnection();
		
		//sql 실행객체 생성
		String sql ="insert into customer values(?,?,?,?,?)";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, cid);
		psmt.setString(2, name);
		psmt.setString(3, hp);
		psmt.setString(4, address);
		psmt.setString(5, rdate);
		
		//sql실행
		psmt.executeUpdate();
		
		//종료 (커넥션 반납)
		psmt.close();
		conn.close();
	
	}catch(Exception e){
		e.printStackTrace();
	}
	
	//목록이동
	response.sendRedirect("/ch03/customer/list.jsp");

%>