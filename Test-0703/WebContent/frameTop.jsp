<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--������ ���� frame(�α���, �Խ��� ������ �̵�����) --%>
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
<body scroll="no"> <%-- ��ũ�ѹ� ���ֱ� --%>
	<a href="Home.jsp" target="_view"><h4>Home</h4></a>
	<a href="login.jsp" target="_view"><h4>�α���</h4></a>
</body>
</html>