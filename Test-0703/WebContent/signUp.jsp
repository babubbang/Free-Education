<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Header.jsp"/>
<h1>회원가입</h1>
<form action="main.jsp" method="post">
	성명 <input type="text" name="name"><p>
	ID <input type="text" name="id"><p>
	PW <input type="password" name="pw"><p>
	전화번호 <input type="text" name="pNum"><p>
	<input type="submit" value="완료">
	<footer><jsp:include page="Footer.jsp"/></footer>
</form>
</body>
</html>