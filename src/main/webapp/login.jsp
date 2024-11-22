<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
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

	<%-- below code, for checking connection --%>
	<%--<%
		Connection connection = DBConnect.getConnection();
		out.println(connection);
	%> --%>


	<div class="container">
		<div class="row mt-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header text-center text-white c-head">
						<i class="fa-regular fa-circle-user fa-2x"></i>
						<h2>Login Page</h2>
					</div>


					<!-- alert inside the form -->
					<%
								String logoutMsg = (String)session.getAttribute("logout-msg");
									if(logoutMsg != null){
										%>

					<div class="alert alert-success" role="alert"><%=logoutMsg %></div>

					<%	
									session.removeAttribute("logout-msg");
									}
								%>
								
								
							<!-- alert message, if wrong credentials entered  -->
					<%
								
									String errorMsg = (String)session.getAttribute("error-msg");
									 if(errorMsg != null){
									%>
					<div class="alert alert-danger" role="alert"><%=errorMsg %></div>
					<% 
									session.removeAttribute("error-msg");
										}
									%>



					<div class="card-body">
						<form action="loginServlet" method="post">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="email" required>
								<!--  <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>-->
							</div>

							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" name="password" required>
							</div>

							<div class="d-grid">
								<button type="submit" class="btn btn-primary">Login</button>
							</div>


						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>