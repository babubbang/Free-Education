<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>ȸ������ ��� Ȯ��</h1>
<%
	request.setCharacterEncoding("EUC-KR");
	String ���� = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String ��ȭ��ȣ = request.getParameter("pNum");
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection
				("jdbc:mysql://localhost/inha","root","1234");
		Statement stmt = conn.createStatement();
		
		stmt.executeUpdate("insert into users(����,ID,PW,��ȭ��ȣ) values('"+����+"','"+id+"','"+pw+"','"+��ȭ��ȣ+"')");
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