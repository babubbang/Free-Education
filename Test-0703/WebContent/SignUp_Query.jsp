<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>회원정보 등록 확인</h1>
<%
	request.setCharacterEncoding("EUC-KR");
	String 성명 = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String 전화번호 = request.getParameter("pNum");
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection
				("jdbc:mysql://localhost/inha","root","1234");
		Statement stmt = conn.createStatement();
		
		stmt.executeUpdate("insert into users(성명,ID,PW,전화번호) values('"+성명+"','"+id+"','"+pw+"','"+전화번호+"')");
		stmt.close();
		conn.close(); %>
<%
	} catch(SQLException e){
		e.printStackTrace(); %>
<%  } 
	%>
<a href = "main.jsp"> Main</a>
</body>
</html>