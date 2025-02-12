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
