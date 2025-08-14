<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="vo.User6vo"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	String seqStr = request.getParameter("seq");
	Integer seq = null;
	if(seqStr != null && !seqStr.isEmpty()){
	    seq = Integer.parseInt(seqStr);
	}

	String host = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "Seolyooo";
	String pass = "1234";
	
	User6vo user6 = null;
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		String sql = "select * from user6 where seq =?";
		
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setInt(1, seq);		
		ResultSet rs = psmt.executeQuery();
		
		if (rs.next()){
			user6 = new User6vo();
			user6.setSeq(rs.getInt(1));
			user6.setName(rs.getString(2));
			user6.setGender(rs.getString(3));
			user6.setAge(rs.getInt(4));
			user6.setAddr(rs.getString(5));
		}
		rs.close();
		psmt.close();
		conn.close();
		
		
		
	}catch(Exception e){
		e.printStackTrace();
		
		
	}

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>user6 수정</title>
	</head>
	<body>
	
		<h3>user6 수정</h3>
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./list.jsp">목록이동</a>	
		
		<form action="./proc/register.jsp" method = "post">
			<table border = "1">
				<tr>
					<td>번호</td>
					<td> <input type = "number" name = "seq" readonly value ="<%=user6.getSeq() %>" placeholder="번호입력"/> </td>
				</tr>
				
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" placeholder="이름입력"/> </td>
				</tr>
				<tr>
					<td>성별</td>
					<td colspan="2">
					<label><input type ="radio" name="gender" value="m"/>m </label>
					<label><input type ="radio" name="gender" value="f"/>f </label>
					</td>
				</tr>	
				
				<tr>
					<td>나이</td>
					<td><input type="number" name="age" placeholder="나이입력"/> </td>
				</tr>		
				
				<tr>
					<td>주소</td>
					<td><input type ="text" name="addr" placeholder="주소 입력"/> </td>
				</tr>
				
				<tr>
					<td colpsan="2" align="right">
					<input type ="submit" value="등록하기"/>
					</td>
				</tr>
			
			</table>
		
		</form>	
	</body>
</html>

