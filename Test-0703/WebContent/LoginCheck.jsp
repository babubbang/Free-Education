<%@page import="java.util.Base64"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.security.MessageDigest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>�α��� Ȯ��</h1>
<%
    String id = request.getParameter("id");
    String pw = (request.getParameter("pw")).trim();
   

    try{
        //DB ����
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/inha", "root", "1234");
        Statement stmt = conn.createStatement();

        ResultSet rs = stmt.executeQuery("select * from users where id = '"+ id +"' and pw ='"+ pw +"'");
        if(rs.next()){
        	response.sendRedirect("welcome.jsp");
        } else {
            out.println("<h1>���� �Ұ����� ������Դϴ�.</h1>"); 
        }
    }catch(SQLException e){
        e.printStackTrace();
    }

%>
</body>
</html>