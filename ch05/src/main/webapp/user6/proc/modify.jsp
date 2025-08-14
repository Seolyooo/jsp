<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String seqStr = request.getParameter("seq");
    Integer seq = null;
    if(seqStr != null && !seqStr.isEmpty()){
        seq = Integer.parseInt(seqStr);
    }

    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String ageStr = request.getParameter("age");
    Integer age = null;
    if(ageStr != null && !ageStr.isEmpty()){
        age = Integer.parseInt(ageStr);
    }
    String addr = request.getParameter("addr");

    String host = "jdbc:oracle:thin:@localhost:1521:xe";
    String user = "Seolyooo";
    String pass = "1234";

    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection(host, user, pass);

        String sql = "UPDATE user6 SET name = ?, gender = ?, age = ?, addr = ? WHERE seq = ?";
        PreparedStatement psmt = conn.prepareStatement(sql);

        psmt.setString(1, name);
        psmt.setString(2, gender);
        if(age != null) {
            psmt.setInt(3, age);
        } else {
            psmt.setNull(3, java.sql.Types.INTEGER);
        }
        psmt.setString(4, addr);
        if(seq != null) {
            psmt.setInt(5, seq);
        } else {
            // seq가 없으면 업데이트 불가이므로 적절한 처리 필요
        }

        psmt.executeUpdate();

        psmt.close();
        conn.close();

    } catch(Exception e){
        e.printStackTrace();
    }

    response.sendRedirect("../list.jsp");
%>
