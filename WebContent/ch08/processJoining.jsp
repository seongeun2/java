<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="memberInfo" class="member.MemberInfo"/>
<jsp:setProperty property="*" name="memberInfo"/>
<jsp:setProperty property="password" name="memberInfo" value="<%=memberInfo.getId() %>"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����</title>
</head>
<body>
	<table width="400" border="1" cellspacing="0" cellpadding="0">
	<tr>
		<td>���̵�</td>
		<td><jsp:getProperty name="memberInfo" property="id"/></td>
		<td>��ȣ</td>
		<td><jsp:getProperty name="memberInfo" property="password"/></td>
	</tr>
	<tr>
		<td>�̸�</td>
		<td><jsp:getProperty name="memberInfo" property="name"/></td>
		<td>�̸���</td>
		<td><jsp:getProperty name="memberInfo" property="email"/></td>
	</tr>
	
	</table>
</body>
</html>