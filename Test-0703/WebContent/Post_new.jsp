<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <h1>�ű� �Խñ� ��</h1>
    <form action="Post_new_send.jsp" method="post">
        <table>
            <tr>
                <td>�ۼ���</td>
                <td><input type="text" name="writer"></td>
            </tr>
            <tr>
                <td>����</td>
                <td><input type="text" name="title"></td>
            </tr>
            <tr>
                <td>����</td>
                <td><textarea rows="10" cols="20" name="content"></textarea></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit">����</button>
                    <button type="button" onclick="location.href='Post_list.jsp'">�������</button>
                    <button type="reset">�ʱ�ȭ</button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>