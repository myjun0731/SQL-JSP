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
	<header>
		<h2>회원 정보 리스트</h2>
	</header>
	<nav>
		<a href="">회원등록</a> <a href="">회원삭제</a> <a href="">회원수정</a> <a href="">홈으로</a>
	</nav>
	<section>
		<h3>List</h3>
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

		<!-- 회원 등록 폼 -->
		<h3>회원 등록</h3>

		<%
		try {
		%>
		<form action="Input.jsp" method="post">
			<table border="1">
				<tr>
					<td>ID</td>
					<td><input type="text" name="id" required></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" required></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="phone" required></td>
				</tr>
				<tr>
					<td>등급</td>
					<td><input type="text" name="grade" required></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="등록"></td>
				</tr>
			</table>
		</form>
		<%
		} catch (Exception e) {
		%>
		<p style="color: red;">
			회원 등록 폼을 로드하는 중 오류 발생:
			<%=e.getMessage()%></p>
		<%
		}
		%>
	</section>
</body>
</html>
