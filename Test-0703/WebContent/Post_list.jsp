<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խ��� ���</title>
</head>
<body>
<form action="Post_read.jsp" method="get">
	<h1>�Խñ� ���</h1>
	<%
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/inha", "root", "1234");
        
		
        String insertQuery = "SELECT * FROM pratice_board.post order by nem desc";
        
        PreparedStatement psmt = conn.prepareStatement(insertQuery);
        
        ResultSet result = psmt.executeQuery();%>
        
       <table border="1">
					<tr>
						<td colspan="5">
							<h3>�Խñ� ���� Ŭ���� �� ���� ����</h3>
						</td>
					</tr>
					<tr>
					    <td colspan="5">
					        <button type="button" value="�ű� �� �ۼ�" onClick="location.href='Post_new.jsp'">�ű� �� �ۼ�</button>
					    </td>
					</tr>
					<tr>
						<td>��ȣ</td>
						<td>�ۼ���</td>
						<td>����</td>
						<td>�ۼ���</td>
						<td>����</td>
					</tr>
					<%
					while (result.next())
					{%>
						<tr>
							<td><%=result.getInt("num") %></td>
							<td><%=result.getString("writer") %></td>
							<td><a href="post_read.jsp?num=<%=result.getInt("num") %>"><%=result.getString("title") %></a></td>
							<td><%=result.getTimestamp("reg_date") %></td>
							<td>
								<button type="button" value="����" onClick="location.href='Post_modify.jsp?num=<%=result.getString("num") %>'">����</button>
								<button type="button" value="����" onClick="location.href='Post_delete_send.jsp?num=<%=result.getString("num") %>'">����</button>
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
	</form>
	
	}
	
	%>
</body>
</html>