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
		<h3>회원 삭제</h3>
		<!-- 회원 목록 출력 -->
		<table border="1">
			<tr>
				<th>ID</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>등급</th>
				<th>삭제</th>
			</tr>

			<%
			// 데이터베이스 연결 및 조회
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
				<td><a href="Delete.jsp?id=<%=jdbc.rs.getString("id")%>"
					onclick="return confirm('정말 삭제하시겠습니까?');">[삭제]</a></td>
			</tr>
			<%
			}
			%>
			<tr>
				<td colspan="5"><a onclick="return confirm('정말 모두 삭제하시겠습니까?');">
						<input type="button" value="모두 삭제"
						onclick="location.href='AllDelete.jsp'">
				</a></td>
			</tr>
			<%
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
