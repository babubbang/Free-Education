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
<h1>ȸ������</h1>
<form action="main.jsp" method="post">
	���� <input type="text" name="name"><p>
	ID <input type="text" name="id"><p>
	PW <input type="password" name="pw"><p>
	��ȭ��ȣ <input type="text" name="pNum"><p>
	<input type="submit" value="�Ϸ�">
	<footer><jsp:include page="Footer.jsp"/></footer>
</form>
</body>
</html>