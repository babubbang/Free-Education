<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խñ� �� ����</title>
</head>
<body>
    <h1>�Խñ� �� ����</h1>
    <%
    try
    {
    	Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sp", "root", "0000");
        request.setCharacterEncoding("UTF-8");
        
        String num = request.getParameter("num");
        
        String insertQuery = "SELECT * FROM post WHERE num=" + num;
        
        PreparedStatement psmt = conn.prepareStatement(insertQuery);
        
        ResultSet result = psmt.executeQuery(); %>
        
        <table border="1">
            <%
            while(result.next())
            {%>
            	<tr>
            	    <td>��ȣ</td>
            	    <td><%=result.getInt("num") %></td>
            	</tr>
            	<tr>
            	    <td>�ۼ���</td>
            	    <td><%=result.getTimestamp("reg_date") %></td>
            	</tr>
            	<tr>
            	    <td>�ۼ���</td>
            	    <td><%=result.getString("writer") %></td>
            	</tr>
            	<tr>
            	    <td>����</td>
            	    <td><%=result.getString("title") %></td>
            	</tr>
            	<tr>
            	    <td>����</td>
            	    <td><%=result.getString("content") %></td>
            	</tr>
            	<tr>
            	    <td colspan="2">
            	        <button type=button onclick="location.href='Post_list.jsp'">�������</button>
            	    </td>
            	</tr>
            	<%            	
            }%>
        </table>
        <%
    }
    catch (Exception ex)
    {
        out.println("������ �߻��߽��ϴ�. ���� �޽��� : " + ex.getMessage());
    }%>

</body>
</html>