<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Cookie cookie = new Cookie("name1",URLEncoder.encode("������","utf-8"));
	response.addCookie(cookie);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��Ű����</title>
</head>
<body>
<%=cookie.getName() %>
��Ű�� �� = "<%=URLDecoder.decode(cookie.getValue(), "utf-8") %>"

</body>
</html>