<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- CSS�� jsp�� �ҷ��ͼ� ���� -->
<jsp:include page="CSS.jsp"/>
</head>
<body>
	<!-- jsp include�� ����ؼ� ���� ������ �����ϰ� ��. -->
	<jsp:include page="Header.jsp"/>
	<jsp:include page="nav.jsp"/>
    <section>
    	<jsp:include page="mainText.jsp"/>
    	<a href="login.jsp">�α���</a>
    </section>
    <!-- footer �±� �ȿ��� jsp:include��� ���� -->
    <footer><jsp:include page="Test.jsp"/></footer>
</body>

</html>