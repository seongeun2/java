<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�̸� ������</title>
</head>
<body>

<form action="/jspPro/ch14/update.jsp" method="post">
<table border="1">
	<tr>
		<td>���̵�</td>
		<td><input type="text" name="memberID" size="10"></td>
		<td>�̸�</td>
		<td><input type="text" name="name" size="10"></td>
	</tr>
	<tr>
		<td colspan="4"><input type="submit" value="����"></td>
	</tr>
</table>
</form>
</body>
</html>