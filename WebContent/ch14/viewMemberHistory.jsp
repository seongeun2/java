<%@page import="java.io.Reader"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String memberID = request.getParameter("memberID");
%>
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	try{
		String jdbcDriver = "jdbc:oracle:thin:@localhost:1521:orcl";
		String dbUser = "scott";
		String dbPass = "tiger";
		
		String query = "select * from MEMBER_HISTORY "+"where MEMBERID='"+memberID+"'";
		
		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		
		stmt = conn.createStatement();
		
		rs = stmt.executeQuery(query);
		if(rs.next()){
%>
<table border="1">
<tr>
	<td>���̵�</td><td><%=memberID %></td>
</tr>
<tr>
	<td>�����丮</td>
	<td>
<%
	String history = null;
	Reader reader = null;
	try{
		reader = rs.getCharacterStream("HISTORY");
		
		if(reader!=null){
			StringBuilder buff = new StringBuilder();
			char[] ch = new char[512];
			int len = -1;
			
			while((len=reader.read(ch))!=-1){
				buff.append(ch,0,len);
			}
			history = buff.toString();
		}
		
	}catch(IOException ex){
		out.println("�ͼ��� �߻�:"+ex.getMessage());
	}finally{
		if(reader!=null)try{reader.close();} catch(IOException ex){}
	}
%>
	<%=history %>
	</td>
</tr>
</table>
<%
		}else{
%>
<%=memberID %>ȸ���� �����丮�� �����ϴ�.
<%
		}
	}catch(SQLException ex){
%>
���� �߻� : <%=ex.getMessage() %>
<%
	}finally{
		if(rs!=null)try{rs.close();}catch(SQLException ex){}
		if(stmt!=null)try{stmt.close();}catch(SQLException ex){}
		if(conn!=null)try{stmt.close();}catch(SQLException ex){}
	}
%>
</body>
</html>