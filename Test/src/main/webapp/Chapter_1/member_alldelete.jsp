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
	
	String sql = "DELETE member_tbl_02";

	JDBC jdbc = new JDBC();
	jdbc.pstmt = jdbc.conn.prepareStatement(sql);
	jdbc.pstmt.executeQuery();

	jdbc.close();

	response.sendRedirect("member_select.jsp");
	%>
</body>
</html>