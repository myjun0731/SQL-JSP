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
		<h3>회원 정보 변경</h3>

		<%
		request.setCharacterEncoding("UTF-8");
		String sql = "SELECT * FROM member_tbl_02 where custno = ?";

		String custno = request.getParameter("custno");
		String custname = request.getParameter("custname");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String joindate = request.getParameter("joindate");
		String grade = request.getParameter("grade");
		String city = request.getParameter("city");
		JDBC jdbc = new JDBC();
		jdbc.pstmt = jdbc.conn.prepareStatement(sql);
		try {
		%>
		<form action="member_edit_E.jsp?custno=<%=custno%>" method="post">
			<table border="1">
				<tr>
					<td>회원번호</td>
					<td><%=custno%></td>
				</tr>
				<tr>
					<td>회원성명</td>
					<td><input type="text" name="custname" required
						placeholder=<%=custname%>></td>
				</tr>
				<tr>
					<td>회원전화</td>
					<td><input type="text" name="phone" required
						placeholder=<%=phone%>></td>
				</tr>
				<tr>
					<td>회원주소</td>
					<td><input type="text" name="grade" required
						placeholder=<%=address%>></td>
				</tr>
				<tr>
					<td>가입일자</td>
					<td><input type="text" name="joindate" required
						placeholder=<%=joindate%>></td>
				</tr>
				<tr>
					<td>고객 등급</td>
					<td><input type="text" name="grade" required
						placeholder=<%=grade%>></td>
				</tr>
				<tr>
					<td>도시코드</td>
					<td><input type="text" name="city" required
						placeholder=<%=city%>></td>
				</tr>
				<tr>
					<td><input type="submit" value="변경"></td>

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
