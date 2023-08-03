<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action="LoginCheck.jsp" method="post">
	ID <input type="text" name="id"><p>
	PW <input type="password" name="pw"><p>
	<input type="submit" value="로그인">
	<button type="button" onclick="location.href='signUp.jsp'">회원가입</button>
</form>

</body>
</html>