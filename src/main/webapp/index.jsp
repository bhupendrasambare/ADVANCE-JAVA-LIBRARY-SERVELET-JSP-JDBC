<%@page import="database.login.common"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = common.getConncection();
	String name = (String)session.getAttribute("name");
	String last = (String)session.getAttribute("last");
	String email = (String)session.getAttribute("email");
	String number = (String)session.getAttribute("number");
%>
Name = <%=name %></br>
Last = <%=last %></br>
Email = <%=email %></br>
number = <%=number %></br>
</body>
</html>