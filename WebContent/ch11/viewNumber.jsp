<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/el-functions.tld" %>
<%
	request.setAttribute("price", 12345);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EL �Լ� ȣ��</title>
</head>
<body>

������ <b>${elfunc:formatNumber(price, '#,##0') }</b>�� �Դϴ�.

</body>
</html>