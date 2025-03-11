<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="./Style.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>쇼핑몰 회원 등록</h2>
		<form action="member_db.jsp" method="post">
			<table border="1">
				<tr>
					<td>회원번호 (자동발생)</td>
					<td><input type="text" name="custno" required
						placeholder="custno"></td>
				</tr>
				<tr>
					<td>회원성명</td>
					<td><input type="text" name="custname" required
						placeholder="custname"></td>
				</tr>
				<tr>
					<td>회원전화</td>
					<td><input type="text" name="phone" required
						placeholder="phone"></td>
				</tr>
				<tr>
					<td>회원주소</td>
					<td><input type="text" name="address" required
						placeholder="address"></td>
				</tr>
				<tr>
					<td>가입일자</td>
					<td><input type="text" name="joindate" required
						placeholder="joindate"></td>
				</tr>
				<tr>
					<td>고객등급</td>
					<td><input type="text" name="grade" required
						placeholder="grade"></td>
				</tr>
				<tr>
					<td>도시코드</td>
					<td><input type="text" name="city" required placeholder="city"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="등록"> <input
						type="button" value="조회" onclick="location.href='member_select.jsp'"></td>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>