<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>if �±�</title>
</head>
<body>
<c:if test="true">
������ ���� <br>
</c:if>

<c:if test="${param.name == 'bk' }">
name �Ķ������ ���� ${param.name }�Դϴ�<br>
</c:if>

<c:if test="${18 < param.age }">
����� ���̴� 18�� �̻��Դϴ�.
</c:if>

</body>
</html>