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
		<h2>쇼핑몰 회원관리 프로그램</h2>
		<p>
			쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다. <br>프로그램
			작성 순서
			<ol>
				<li>회원 정보 테이블을 생성한다.</li>
				<li>매출 정보 테이블을 생성한다.</li>
				<li>회원정보, 매출정보 테이블에 제시된 문제지의 참조 데이터를 추가 생성한다.</li>
				<li>회원정보 조회 프로그램을 작성한다.</li>
				<li>회원매출정보 조회 프로그램을 작성한다.</li>
			</ol>
		</p>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>