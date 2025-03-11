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
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>회원 삭제</h2>
		<table border="1">
			<tr>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>회원전화</th>
				<th>회원주소</th>
				<th>가입일자</th>
				<th>고객등급</th>
				<th>도시코드</th>
				<th colspan="2">삭제</th>
			</tr>

			<%
			request.setCharacterEncoding("UTF-8");

			JDBC jdbc = new JDBC();
			String sql = "SELECT * FROM member_tbl_02";

			try {
				jdbc.pstmt = jdbc.conn.prepareStatement(sql);
				jdbc.rs = jdbc.pstmt.executeQuery();

				while (jdbc.rs.next()) {
			%>

			<tr>
				<td><a
					href="member_edit.jsp?custno=<%=jdbc.rs.getString("custno")%>"><%=jdbc.rs.getString("custno")%></a></td>
				<td><%=jdbc.rs.getString("custname")%></td>
				<td><%=jdbc.rs.getString("phone")%></td>
				<td><%=jdbc.rs.getString("address")%></td>
				<td><%=jdbc.rs.getString("joindate")%></td>
				<td><%=jdbc.rs.getString("grade")%></td>
				<td><%=jdbc.rs.getString("city")%></td>
				<td><a
					href="member_delete.jsp?custno=<%=jdbc.rs.getString("custno")%>"
					onclick="return confirm('정말 삭제하시겠습니까?');"><input type="button"
						value="삭제"></a></td>
			</tr>
			<%
			}
			%>
			<tr>
				<td colspan="9"><a onclick="return confirm('정말 모두 삭제하시겠습니까?');">
						<input type="button" value="모두 삭제"
						onclick="location.href='member_alldelete.jsp'">
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
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
