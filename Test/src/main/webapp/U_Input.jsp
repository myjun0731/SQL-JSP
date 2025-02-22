<%@ page import="java.sql.*"%>
<%@ page import="common.JDBC"%>
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
		<h3>회원 등록</h3>

		<%
		request.setCharacterEncoding("UTF-8");

		try {
			// 요청 파라미터가 있는 경우에만 세션에 값을 저장합니다.
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			String grade = request.getParameter("grade");

			// 값이 존재하면 세션에 저장 (예: 폼 제출 후)
			if (id != null && name != null && phone != null && grade != null) {
				session.setAttribute("ID", request.getParameter("id"));
				session.setAttribute("name", request.getParameter("name"));
				session.setAttribute("phone", request.getParameter("phone"));
				session.setAttribute("grade", request.getParameter("grade"));
			}
		%>
		<form action="E_Input.jsp" method="post">
			<table border="1">
				<tr>
					<td>ID</td>
					<td><input type="text" name="id" required
						placeholder="ID"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" required
						placeholder="NAME"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="phone" required
						placeholder="형식 : 010-0000-0000"></td>
				</tr>
				<tr>
					<td>등급</td>
					<td><input type="text" name="grade" required
						placeholder="[Ex) 'A']"></td>
				</tr>
				<tr>
					<%
					session.setAttribute("id", request.getParameter("id"));
					session.setAttribute("name", request.getParameter("name"));
					session.setAttribute("phone", request.getParameter("phone"));
					session.setAttribute("grade", request.getParameter("grade"));
					%>
					<td colspan="2"><input type="submit" value="등록"></td>
				</tr>
			</table>
		</form>
		<%
		} catch (Exception e) {
		%>
		<p style="color: red;">
			회원 등록 폼을 로드하는 중 오류 발생:
			<%=e.getMessage()%>
		</p>
		<%
		}
		%>
	</section>
</body>
</html>
