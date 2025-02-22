<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="./Style.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

nav {
text-align: center;
}
nav a:link {
	color: white;
	text-decoration: none;
}

nav a:visited {
	color: white;
	text-decoration: none;
}

a:hover {
	color: lightgray;
	text-decoration: underline;
}

nav a:active {
	color: lightgray;
	text-decoration: none;
}
</style>
</head>
<body>
	<header>
		<h2>회원 정보 리스트</h2>
	</header>
	<nav>
		<a href="./U_Input.jsp">회원등록</a> <a href="./U_Delete.jsp">회원삭제</a> <a
			href="./U_change.jsp">회원수정</a> <a href="./U_Home.jsp">홈으로</a>
	</nav>
</body>
</html>