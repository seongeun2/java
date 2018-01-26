<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>요청 파라미터 출력</title>
</head>
<body>
<!--<b>request.getParameter() 메서드 사용</b><br>  -->
name : <%=request.getParameter("name") %><br>
Email : <%=request.getParameter("email") %><br>
address : <%=request.getParameter("address") %><br>
birthday : <%=request.getParameter("birthday") %><br>
Message : <%=request.getParameter("Message") %><br>
job : <%=request.getParameter("job") %><br>
<p>
<!--<b>request.getParameterValues() 메서드 사용</b><br>  -->


</body>
</html>