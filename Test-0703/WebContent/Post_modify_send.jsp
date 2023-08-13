<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/inha", "root", "1234");
    
    request.setCharacterEncoding("UTF-8");
    
 	String writer = request.getParameter("writer");
 	String title = request.getParameter("title");
 	String content = request.getParameter("content");
    
    String num = request.getParameter("num");
    
    String insertQuery = "SELECT * FROM pratice_board.post WHERE num=" + num;
    
 	PreparedStatement psmt = conn.prepareStatement(insertQuery);
 	
 	ResultSet result = psmt.executeQuery();
 	
 	while(result.next())
 	{
        insertQuery = "UPDATE pratice_board.post set title=?, writer=?, content=? WHERE num=" + num;
 	    
 	    psmt = conn.prepareStatement(insertQuery);
        
        psmt.setString(1, title);
        psmt.setString(2, writer);
        psmt.setString(3, content);
        
        psmt.executeUpdate();
        
        response.sendRedirect("Post_list.jsp");
 	}
}
catch (Exception ex)
{
	out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
}
%>