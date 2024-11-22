<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
	integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="cssss/bootstrap.css">
<link rel="stylesheet" href="css/style.css">

	<title>Login & Register Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(120deg, #f6d365 0%, #fda085 100%);
            color: #fff;
            text-align: center;
        }

        /* Top Bar */
        .top-bar {
            background-color: #2c3e50;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .top-bar img {
            height: 70px;
            margin-left: 20px;
        }

        .top-bar nav {
            margin-right: 20px;
        }

        .top-bar a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
        }

        /* Hero Section */
        .hero {
            padding: 100px 0;
            background: rgba(0, 0, 0, 0.4);
            backdrop-filter: blur(5px);
        }

        .hero h1 {
            font-size: 48px;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 20px;
            margin-bottom: 30px;
        }

        .btn {
            padding: 15px 30px;
            background-color: #3498db;
            border: none;
            color: white;
            cursor: pointer;
            margin: 10px;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #2980b9;
        }

        /* Features Section */
        .features {
            padding: 50px 0;
            background-color: #34495e;
        }

        .features h2 {
            font-size: 36px;
            margin-bottom: 30px;
        }

        .features .feature-item {
            display: inline-block;
            width: 30%;
            padding: 20px;
            margin: 10px;
            background-color: #2c3e50;
            border-radius: 8px;
        }

        .features .feature-item i {
            font-size: 50px;
            color: #3498db;
            margin-bottom: 10px;
        }

        .features .feature-item p {
            font-size: 18px;
        }

        /* Testimonial Section */
        .testimonials {
            padding: 50px 0;
            background-color: #e74c3c;
        }

        .testimonials h2 {
            font-size: 36px;
            margin-bottom: 30px;
        }

        .testimonial {
            display: inline-block;
            width: 40%;
            margin: 10px;
            padding: 20px;
            background-color: #c0392b;
            border-radius: 8px;
        }

        .testimonial p {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .testimonial .author {
            font-size: 16px;
            font-style: italic;
        }

        /* Footer */
        footer {
            padding: 20px;
            background-color: #2c3e50;
            color: #fff;
        }

        footer a {
            color: #fff;
            margin: 0 10px;
        }
    </style>
</head>

	
	<body>

    <!-- Top Bar -->
    <div class="top-bar">
        <img src="Aman image.jpg" alt="aman image">
        <nav>
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
        </nav>
    </div>

    <!-- Hero Section -->
    <section class="hero">
        <h1>Welcome to Our Website</h1>
        <p>Login or register to start managing your tasks efficiently</p>
        <a href="login.jsp" class="btn">Login</a>
        <a href="register.jsp" class="btn">Register</a>
    </section>

    <!-- Features Section -->
    <section class="features">
        <h2>Why Choose Us?</h2>
        <div class="feature-item">
            <i class="fa fa-shield"></i>
            <p>Secure User Management</p>
        </div>
        <div class="feature-item">
            <i class="fa fa-mobile"></i>
            <p>Access Anytime, Anywhere</p>
        </div>
        <div class="feature-item">
            <i class="fa fa-clock"></i>
            <p>Fast & Simple Registration</p>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="testimonials">
        <h2>What Our Users Say</h2>
        <div class="testimonial">
            <p>"This platform is amazing! It has simplified my workflow greatly."</p>
            <div class="author">- Aman</div>
        </div>
        <div class="testimonial">
            <p>"The user interface is sleek and intuitive. Love it!"</p>
            <div class="author">- Alex</div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Your Company. All rights reserved.</p>
        <a href="#">Privacy Policy</a>
        <a href="#">Terms of Service</a>
        <a href="#">Contact Us</a>
    </footer>

    <!-- FontAwesome Icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
	


	



































<!-- <body
	style="background-image: linear-gradient(to right top, #3148e1, #ea00a5, #ff414f, #ffa300, #afea2c); background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">

	

	<nav class="navbar navbar-expand-lg bg-custom navbar-dark"
		style="display: flex; align-items: center; justify-content: space-around; background-color: green; padding: 10px;">
		<div class="container-fluid"
			style="display: flex; align-items: center;">
			<a class="navbar-brand" href="#"> <img src="Aman image.jpg"
				alt="aman image" width="70" height="70"
				style="border-radius: 50%; border: 1px solid red; margin-right: 10px;">
				<span style="color: white; font-size: 18px; margin-right: 20px;">Aman
					Kumar</span>
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					
					<li class="nav-item"><a class="nav-link active"
						href="login.jsp">Login</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-disabled="true" href="register.jsp">Register</a></li>
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-secondary" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>

	


	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
		integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
		crossorigin="anonymous"></script>

</body> -->


</html>