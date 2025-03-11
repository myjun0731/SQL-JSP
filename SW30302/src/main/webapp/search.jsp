<%@page import="common.JDBC"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 매출 조회</title>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");

	JDBC jdbc = new JDBC();
	String sql = "select mem.custno, mem.custname, mem.grade, sum(mon.amount * mon.pcost) as total "
			+ "from member_tbl_02 mem, money_tbl_02 mon " + "where mem.custno = mon.custno "
			+ "group by mem.custno, mem.custname, mem.grade " + "order by mem.custno";

	jdbc.pstmt = jdbc.conn.prepareStatement(sql);
	jdbc.rs = jdbc.pstmt.executeQuery();
	%>

	<!-- 2. Header.jsp 파일을 불러와서 상단 메뉴를 추가 -->
	<jsp:include page="header.jsp"></jsp:include>

	<br>

	<!-- 3. 프로그램 제목 -->
	<h2>회원정보조회</h2>

	<br>

	<!-- 4. 회원 매출 정보를 표로 출력 -->
	<section>
		<table border="1">
			<tr>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>고객등급</th>
				<th>매출</th>
			</tr>

			<%
			// 5. 조회된 회원 정보를 한 줄씩 출력
			while (jdbc.rs.next()) {
			%>
			<tr>
				<td><%=jdbc.rs.getString(1)%></td>
				<!-- 회원번호 -->
				<td><%=jdbc.rs.getString(2)%></td>
				<!-- 회원성명 -->
				<td><%=jdbc.rs.getString(3)%></td>
				<!-- 고객등급 -->
				<td><%=jdbc.rs.getString(4)%></td>
				<!-- 총 매출 -->
			</tr>
			<%
			}
			%>
		</table>
	</section>
	<footer>
		<h2>상일미디어고 30302 Kim MyJun</h2>
	</footer>
</body>
</html>
