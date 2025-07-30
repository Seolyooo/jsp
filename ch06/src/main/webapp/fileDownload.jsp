<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="dto.Filedto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ pagecontentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%

	List<Filedto> files = new ArrayList<>();
	try{
		 Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		 DataSource ds =(DataSource) ctx.lookup("jdbc/seolyooo");
		 
		 Connection conn = ds.getConnection();
		 
		 Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from files");
		
		while (rs.next()) {
			Filedto dto = new Filedto();
			dto.setNo(rs.getInt("no"));               // 컬럼 이름으로 명확히
			dto.setTitle(rs.getString("title"));
			dto.setName(rs.getString("name"));
			dto.setoName(rs.getString("oname"));
			dto.setsName(rs.getString("sname"));
			dto.setRdate(rs.getString("rdate"));
			files.add(dto);
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
		<title>filedownload</title>
		<%--
			날짜 : 2025.07.30
			이름 : 설유진
			내용 : jsp 파일 업로그 실습하기
		
		
		 --%>
	</head>
	<body>
		<h3>파일다운로드</h3>
		<a href="/ch06/fileupload.jsp">파일 업로드</a>
		
		<table border ="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>파일명</th>
				<th>관리</th>
			</tr>
		
		<%for(Filedto fd : files ){ %>
		<tr>
			<td><%= fd.getNo() %></td>
			<td><%= fd.getTitle() %></td>
			<td><%= fd.getName() %></td>
				<td><a href="/ch06/proc/filedownload.jsp?no=<%= fd.getNo() %>"><%= fd.getoName() %></a></td>
			<td>
				<a href ="/ch06/proc/filedelete.jsp?no=<%=fd.getNo()%>">삭제</a>
					<a href="/ch06/proc/filedownload.jsp?no=<%= fd.getNo() %>">다운로드</a>
			</td>
			</tr>
			<%} %>
		</table>
	
	</body>
</html>