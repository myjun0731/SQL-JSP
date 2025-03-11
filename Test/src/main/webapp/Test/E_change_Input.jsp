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

		<%
		request.setCharacterEncoding("UTF-8");
		
		String ID = request.getParameter("id");
		String NAME = request.getParameter("name");
		String PHONE = request.getParameter("phone");
		String GRADE = request.getParameter("grade");
		JDBC jdbc = new JDBC();
		try {
		%>
		<form action="E_change.jsp?id=<%=ID%>" method="post">
			<table border="1">
				<tr>
					<td>ID</td>
					<td><%=request.getParameter("id")%></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" required
						placeholder=<%=request.getParameter("name")%>></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="phone" required
						placeholder=<%=request.getParameter("phone")%>></td>
				</tr>
				<tr>
					<td>등급</td>
					<td><input type="text" name="grade" required
						placeholder=<%=request.getParameter("grade")%>></td>
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
