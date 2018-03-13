<%@page import="ch11.Member"%>
<%@page import="java.util.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	${vals = [20, 17, 30, 2, 9, 23];
	  sortedVals = vals.stream().sorted().toList()}
	<hr>
	${vals = [20, 17, 30, 2, 9, 23];
	  sortedVals = vals.stream()
	  .sorted((x1, x2) -> x1 < x2 ? 1 : -1).toList()}
	<hr>
	<%
		List<Member> memberList = Arrays.asList(
			new Member("홍길동", 20), new Member("이순신", 54),
			new Member("유관순", 19), new Member("왕건", 42));
		request.setAttribute("members", memberList);
	%>${sortedMem = members.stream()
		.sorted((m1, m2) -> m1.name.compareTo(m2.name)).toList();}
		${sortedMem }
</body>
</html>