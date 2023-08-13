<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sp", "root", "0000");
    
    request.setCharacterEncoding("UTF-8");
    
    String num = request.getParameter("num");
    
    String insertQuery = "DELETE FROM post WHERE num=" + num;
    
 	PreparedStatement psmt = conn.prepareStatement(insertQuery);

    psmt.executeUpdate();
 	
    response.sendRedirect("Post_list.jsp");
}
catch (Exception ex)
{
	out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
}
%>