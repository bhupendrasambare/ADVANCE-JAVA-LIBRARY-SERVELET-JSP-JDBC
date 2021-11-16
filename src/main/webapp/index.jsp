<%@page import="database.login.common"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel = "icon" href = 
"template/assets/img/logo.png" 
        type = "image/x-icon">

<title>Library</title>
</head>
<body>
<%
	Connection conn = common.getConncection();
	if(session.getAttribute("id") == null){
		response.sendRedirect("login");
	}
	String name = (String)session.getAttribute("name");
	String last = (String)session.getAttribute("last");
	String email = (String)session.getAttribute("email");
	String number = (String)session.getAttribute("number");
%>

<%if(name !=null){
	%>
Name = <%=name %>
</br>
Last = <%=last %>
</br>
Email = <%=email %>
</br>
number = <%=number %>

<%} %>
</body>
</html>