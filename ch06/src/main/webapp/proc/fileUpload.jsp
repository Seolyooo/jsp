<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="org.apache.catalina.tribes.transport.DataSender"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.util.UUID"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FilenameFilter"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="org.apache.commons.fileupload2.jakarta.servlet6.JakartaServletDiskFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//수신 데이터 처리
	
	
	/*
		- 일반 form 이 아닌 파일 전송폼(multipart/form-data)으로 전송하는 데이터는 request 객체 수신 안함
		- 파일 전송폼으로 전송되는 데이터 수신(파일 포함)은 MUltipartrequest(cos.jar)로 수신
	
	
	*/


	//파일 업로드 디렉토리 경로 생성
	String path = application.getRealPath("./files");

	//업로드 파일 part(업로드된 파일) 생성
	 Part part = request.getPart("file1");
	 
	 //파일명 추출
	String oriName = part.getSubmittedFileName();
	 
	System.out.println("fname : "+oriName);	 
	
	
	 //파일 저장
	 part.write(path+ "/"+oriName);	
	 
	 //중복되지 않는 파일명으로 저장
	 String ext = oriName.substring(oriName.lastIndexOf("."));
	 
	 String savedname = UUID.randomUUID().toString() + ext;
	 //파일 저장(경로 + 구분자 + 중복되지 않는 파일명)
	 part.write(path + File.separator +savedname);
	 
	 //기타 파라미터 수신
		String title = request.getParameter("title");
		String name = request.getParameter("name");
		
		System.out.println("title :" + title + ", name : "+ name);

		 
	 //데이터베이스에 파일 파일명 저장(insert)
	 
	 try{
		 Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		 DataSource ds =(DataSource) ctx.lookup("jdbc/seolyooo");
		 
		 Connection conn = ds.getConnection();
		 
		 String sql = "insert into files (title,name,oname,sname,rdate) values (?,?,?,?,sysdate)";
		 PreparedStatement psmt = conn.prepareStatement(sql);
		 psmt.setString(1, title);
		 psmt.setString(2, name);
		 psmt.setString(3, oriName);
		 psmt.setString(4, savedname);

		 psmt.executeUpdate();
		 
		 psmt.close();
		 conn.close();
		 
		 
	 }catch(Exception e){
		 e.printStackTrace();
	 }
	 
	 
	 
	 //파일 목록 이동(리다이렉트)
	 
	 response.sendRedirect("/ch06/fileDownload.jsp");
	 
	 
	 
	
	 
	
	
%>