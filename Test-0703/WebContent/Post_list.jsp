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
<title>게시판 목록</title>
</head>
<body>
<form action="Post_read.jsp" method="get">
	<h1>게시글 목록</h1>
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
							<h3>게시글 제목 클릭시 상세 열람 가능</h3>
						</td>
					</tr>
					<tr>
					    <td colspan="5">
					        <button type="button" value="신규 글 작성" onClick="location.href='Post_new.jsp'">신규 글 작성</button>
					    </td>
					</tr>
					<tr>
						<td>번호</td>
						<td>작성자</td>
						<td>제목</td>
						<td>작성일</td>
						<td>관리</td>
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
								<button type="button" value="수정" onClick="location.href='Post_modify.jsp?num=<%=result.getString("num") %>'">수정</button>
								<button type="button" value="삭제" onClick="location.href='Post_delete_send.jsp?num=<%=result.getString("num") %>'">삭제</button>
							</td>
						</tr>
					<%
					}%>
				</table>
				<%
			}
			catch (Exception ex)
			{
				out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
			}%>
	</form>
	
	}
	
	%>
</body>
</html>