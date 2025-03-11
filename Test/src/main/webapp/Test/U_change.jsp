<%@ page import="java.sql.*"%>
<%@page import="common.JDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="./Style.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>회원 관리 시스템</title>
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<section>
		<h3>회원 정보 변경</h3>
		<table border="1">
			<tr>
				<th>ID</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>등급</th>
				<th>변경</th>
			</tr>

			<%
			request.setCharacterEncoding("UTF-8");
			
			JDBC jdbc = new JDBC();
			String sql = "SELECT * FROM member_02";

			try {
				jdbc.pstmt = jdbc.conn.prepareStatement(sql);
				jdbc.rs = jdbc.pstmt.executeQuery();

				while (jdbc.rs.next()) {
			%>

			<tr>
				<td><%=jdbc.rs.getString("id")%></td>
				<td><%=jdbc.rs.getString("name")%></td>
				<td><%=jdbc.rs.getString("phone")%></td>
				<td><%=jdbc.rs.getString("grade")%></td>
				<td><a
					href="E_change_Input.jsp?id=<%=jdbc.rs.getString("id")%>&name=<%=jdbc.rs.getString("name")%>&phone=<%=jdbc.rs.getString("phone")%>&grade=<%=jdbc.rs.getString("grade")%>">[변경]</a></td>
			</tr>
			<%
			}
			} catch (Exception e) {
			%>
			<tr>
				<td colspan="5" style="color: red;">데이터를 불러오는 중 오류 발생: <%=e.getMessage()%></td>
			</tr>
			<%
			} finally {
			jdbc.close();
			}
			%>
		</table>
	</section>
</body>
</html>
