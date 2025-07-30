<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.File"%>
<%@page import="dto.Filedto"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//파일정보 수신	
	String no = request.getParameter("no");

	String savedname = null;
	


	//파일 정보 삭제
	try{
		 Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		 DataSource ds =(DataSource) ctx.lookup("jdbc/seolyooo");
		 
		 Connection conn = ds.getConnection();
		 
		 
		 
		String sql = "select sname from files where no = ?";
		 PreparedStatement psmtselect = conn.prepareStatement(sql);
		 psmtselect.setString(1, no);
		 
		ResultSet rs = psmtselect.executeQuery();
		
		 
		 if(rs.next()){
			  savedname = rs.getString(1);
		 }
		 
		 String deletesql = "delete from files where no =?";
		 PreparedStatement psmtdelete = conn.prepareStatement(deletesql);
		 psmtdelete.setString(1, no);
		 
		 psmtdelete.executeUpdate();
		 
		rs.close();
		psmtdelete.close();
		psmtselect.close();
		conn.close();
		 
		 
	}catch(Exception e){
		e.printStackTrace();
		
	}
	
	//저장된 파일 삭제
	String path = application.getRealPath("/files");
	
	File savedFile = new File(path + File.separator + savedname);
	
	savedFile.delete();
	
	response.sendRedirect("/ch06/fileDownload.jsp");
	
	
	%>
	
	
	
	
	
	
	