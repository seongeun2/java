<%@page import="ch11.Thermometer"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Thermometer thermometer = new Thermometer();
	request.setAttribute("t", thermometer);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	${t.setCelsius('����', 27.3) }
	���� �µ� : ���� ${t.getCelsius('����') }�� / ȭ�� ${t.getFahrenheit('����')}
	
	<br/>
	���� : ${t.info }: ${t.aaa }: ${t.bbb }
</body>
</html>