<%@page import="database.Users.bag"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.login.common"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.Users.Details"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	if(session.getAttribute("id") == null){
		response.sendRedirect("login");
	}
	else{
		
	bag detail = new bag();
	ResultSet table =  detail.getIssueBook((Integer)session.getAttribute("id"));
	boolean isResult=false;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

		<link rel = "icon" href = "template/assets/img/logo.png" type = "image/x-icon">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="template/assets/fonts/fontawesome-all.min.css">

<title>Library</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid ps-5">
    <a class="navbar-brand fw-bolder fs-3" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse container ms-5 me-5" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link fw-bold active" aria-current="page" href="">Dashboard</a>
        </li>
        <li class="nav-item">
          <a class="nav-link fw-bold active" aria-current="page" href="due">Due</a>
        </li>
        <li class="nav-item">
          <a class="nav-link fw-bold active" aria-current="page" href="bag">Bag</a>
        </li>
      </ul>
      
      <a href="logout">
        <button href="logout" class="btn btn-outline-dark">Logout</button>
        </a>
    </div>
  </div>
</nav>

	<div class="conteiner mt-3 d-flex justify-content-center">
		<div><h1>Student Issued Books</h1></div>
	</div>
	
<div class="container mt-3">
	<table class="table">
	  <thead class="table-dark">
	    <tr>
	      <th scope="col"><i class="fas fa-book"></i></th>
	      <th scope="col">Issue Id</th>
	      <th scope="col">Book Id</th>
	      <th scope="col">Issue Date</th>
	    </tr>
	  </thead>
	  <tbody>
	  <%
	  	while(table.next())
	  	{
	  		isResult = true;
	  %>
	    <tr>
	      <th scope="row"><i class="fas fa-book"></i></th>
	      <td><%=table.getInt("i_id")%></td>
	      <td><%=table.getInt("b_id")%></td>
	      <td><%=table.getString("issue_date")%></td>
	    </tr>
	  	<% }%>
		<%if(!isResult){%>
			
		<tr>
	      <th>No Record Found</th>
	    </tr>
			
		<%}%>
	  </tbody>
	</table>
</div>






<%-- <%String name = (String)session.getAttribute("name");String last = (String)session.getAttribute("last");String email = (String)session.getAttribute("email");String number = (String)session.getAttribute("number"); %>
 --%>
<%-- <%if(name !=null){%>Name = <%=name %></br>Last = <%=last %></br>Email = <%=email %></br>number = <%=number %><%} %> --%>

	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    
</body>
</html>
	<%}%>