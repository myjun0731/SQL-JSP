<%@page import="common.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String grade = request.getParameter("grade");

	String sql = "UPDATE member_02 SET name = ?, phone = ?, grade = ? WHERE id = ?";

	JDBC jdbc = new JDBC();
	try {
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		jdbc.pstmt.setString(1, name);
		jdbc.pstmt.setString(2, phone);
		jdbc.pstmt.setString(3, grade);
		jdbc.pstmt.setString(4, id);

		int updateCount = jdbc.pstmt.executeUpdate();
		// 업데이트 성공 시 세션에 수정된 정보를 갱신
		if (updateCount > 0) {
			session.setAttribute("name", name);
			session.setAttribute("phone", phone);
			session.setAttribute("grade", grade);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		jdbc.close();
	}

	response.sendRedirect("U_change.jsp");
	%>
</body>
</html>
