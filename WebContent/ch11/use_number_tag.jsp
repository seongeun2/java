<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:set var="price" value="10000" />
<fmt:formatNumber value="${price }" type="number" var="numberType" />
<br/>
��ȭ : <fmt:formatNumber value="${price }" type="currency" currencySymbol="��" />
<br/>
�ۼ�Ʈ : <fmt:formatNumber value="${price }" type="percent" groupingUsed="false" />
<br/>
���� : {numberType}
<br/>
���� : <fmt:formatNumber value="${price }" pattern="00000000.00" />

</body>
</html>