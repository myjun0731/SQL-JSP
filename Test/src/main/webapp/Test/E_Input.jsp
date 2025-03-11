<%@page import="common.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String Phone = request.getParameter("phone");
	String grade = request.getParameter("grade");

	String sql = "insert into member_02 values(?,?,?,?)";

	JDBC jdbc = new JDBC();
	jdbc.pstmt = jdbc.conn.prepareStatement(sql);

	jdbc.pstmt.setString(1, id);
	jdbc.pstmt.setString(2, name);
	jdbc.pstmt.setString(3, Phone);
	jdbc.pstmt.setString(4, grade);
	jdbc.pstmt.executeQuery();
	jdbc.close();

	response.sendRedirect("U_Input.jsp");
	%>
</body>
</html>