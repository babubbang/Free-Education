<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- CSS를 jsp로 불러와서 관리 -->
<jsp:include page="CSS.jsp"/>
</head>
<body>
	<!-- jsp include를 사용해서 파일 수정시 용이하게 함. -->
	<jsp:include page="Header.jsp"/>
	<jsp:include page="nav.jsp"/>
    <section>
    	<jsp:include page="mainText.jsp"/>
    </section>
    <!-- footer 태그 안에도 jsp:include사용 가능 -->
    <footer><jsp:include page="Test.jsp"/></footer>
</body>

</html>