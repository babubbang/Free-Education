<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sp", "root", "0000");
    
    request.setCharacterEncoding("UTF-8");
    
	Timestamp today_date = new Timestamp(System.currentTimeMillis());
    
	String writer = request.getParameter("writer");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	int num = 0;
	
	String insertQuery = "SELECT MAX(num) from post";
	
	PreparedStatement psmt = conn.prepareStatement(insertQuery);
	
	ResultSet result = psmt.executeQuery();
	
	while(result.next())
	{
	    num = result.getInt("MAX(num)") + 1;
	}
	
	insertQuery = "INSERT INTO post(num, title, writer, content, reg_date) VALUES (?, ?, ?, ?, ?)";
	
	psmt = conn.prepareStatement(insertQuery);
	
	psmt.setInt(1, num);
	psmt.setString(2, title);
	psmt.setString(3, writer);
	psmt.setString(4, content);
	psmt.setTimestamp(5, today_date);
	
	psmt.executeUpdate();
	
	response.sendRedirect("Post_list.jsp");
}
catch (Exception ex)
{
    out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
}
%>