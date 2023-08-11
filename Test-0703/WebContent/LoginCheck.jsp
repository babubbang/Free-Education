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
<%
    String id = request.getParameter("id");
    String pw = (request.getParameter("pw")).trim();
   

    try{
        //DB 연동
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/inha", "root", "1234");
        Statement stmt = conn.createStatement();

        ResultSet rs = stmt.executeQuery("select * from users where id = '"+ id +"' and pw ='"+ pw +"'");
        if(rs.next()){
        	session.setAttribute("id", id);
        	response.sendRedirect("LoginSuccess.jsp");
        } else {
            out.println("<h1>접근 불가능한 사용자입니다.</h1>"); 
            %><a href ="main.jsp"> Main</a>
 <% 
        }
    }catch(SQLException e){
        e.printStackTrace();
    }

%>
</body>
</html>