<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--페이지 상위 frame(로그인, 게시판 등으로 이동가능) --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	.frameTop{
  		display: flex;
	}
	h2{
		margin-left: 30px;
		margin-right: 100px;
		font-style: italic;
		font-size: 20pt;
	}
	h4{
		margin-left: 130px;
		text-decoration: underline;
		text-align: center;
		font-size: 15pt;
	}
</style>
</head>
<div class="frameTop">
<body scroll="no"> <%-- 스크롤바 없애기 --%>
	<a href="Home.jsp" target="_view"><h4>Home</h4></a>
	<a href="login.jsp" target="_view"><h4>로그인</h4></a>
</body>
</html>