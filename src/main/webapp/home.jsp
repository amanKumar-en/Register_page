<%@page import="com.entities.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%--  --%>
<%
    	User user = (User)session.getAttribute("user-ob");
    
    	if(user == null){
    		session.setAttribute("login-msg", "Please Login First...");
    		response.sendRedirect("login.jsp");
    	}
    %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="cssss/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
</head>

<body
	style="background-image: linear-gradient(to right top, #3148e1, #ea00a5, #ff414f, #ffa300, #afea2c); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">

	<!--navbar start  -->

	<nav class="navbar navbar-expand-lg bg-custom navbar-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Navbar</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
					</li>

					<li class="nav-item"><a class="nav-link" aria-disabled="true"
						href="register.jsp">Register</a></li>
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>

	<!-- navbar ends -->


	<!-- home page jsp -->
	<div class="container">
		<div class="row d-flex justify-content-center align-items-center mt-5">
			<div class="col-md-6">
				<div class="card">

					<!-- using Scriptlet tag for fetching the name & email from DB to the home.jsp page -->
					<!-- from loginServlet we get Attribute name -->
					<%
							User user1 = (User)session.getAttribute("user-ob");
							
						%>

					<%
						if(user != null){
							%>

					<div class="card-body">

						<h1>
							Name:
							<%=user1.getName()%></h1>
						<h1>
							Email:
							<%=user1.getEmail()%></h1>

						<div class="container text-center">
							<a class="btn btn-outline-primary btn-lg" href="logoutServlet"
								style="text-decoration: none;">Logout</a>
						</div>

					</div>

					<% 		
						}
					%>


				</div>

			</div>

		</div>
	</div>



</body>
</html>