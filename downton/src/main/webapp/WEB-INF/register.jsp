<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Wire+One"
	rel="stylesheet" type="text/css">
<link href="/css/index.css" rel="stylesheet" type="text/css">
<title>Downton: A Visual Guide</title>
</head>

<body>
	<header>
		<!-- navbar -->
		<nav
			class="navbar navbar-expand-lg navbar-light fixed-top mask-custom shadow-0">
			<div class="container">
				<a class="navbar-brand">Downton: A Visual Guide</a>
				<!-- Downton Main Theme auto plays when site is loaded -->
				<audio controls autoplay>
					<source src="/media/DowntonAbbeyTheme.mp3" type="audio/mpeg" />
				</audio>
				<div class="d-flex flex-row-reverse" id="main-nav-content">
					<button class="navbar-toggler" type="button"
						data-mdb-toggle="collapse"
						data-mdb-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fas fa-bars"></i>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">

						<!-- Dropdown login menu -->
						<div class="dropdown">
							<a type="button" class="btn btn-link btn-lg"
								data-bs-toggle="dropdown" id="login-button"> Login </a>
							<div class="dropdown-menu p-3 m-3 mask-custom shadow-0">
								<h3 class="dropdown-header" id="login-header">Login to the
									site below:</h3>
								<form:form class="px-5 py-4" action="/login" method="POST">
									<div class="form-floating mb-3 p-2">
										<input type="email" class="form-control" id="floatingEmail"
											placeholder="name@example.com"> <label for="email">Email
											address</label>
									</div>
									<div class="form-floating mb-3 p-2">
										<input type="password" class="form-control"
											id="floatingPassword" placeholder="Password"> <label
											for="password">Password</label>
									</div>
									<!-- <div class="mb-3">
										<div class="form-check">
											<input type="checkbox" class="form-check-input"
												id="dropdownCheck"> <label class="form-check-label"
												for="dropdownCheck"> Remember me </label>
										</div>
									</div> -->
									<button type="submit" class="btn btn-secondary btn-lg mt-3">Sign
										in</button>
								</form:form>
							</div>
						</div>
						<!-- End dropdown -->

						<!-- nav links -->
						<ul class="navbar-nav me-auto offset-1">
							<li class="nav-item"><a class="nav-link" href="#">Register</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#!">Wiki</a></li>
							<li class="nav-item"><a class="nav-link" href="#!">About</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		<!-- End navbar -->
	</header>
	<section>
		<div id="intro" class="bg-image vh-100">
			<div class="mask"
				style="background-color: rgba(250, 182, 162, 0.15);"></div>
			<!-- registration form -->
			<div class="container card top-buffer">
				<div class="card-img-overlay col-6 offset-3">
					<div class="card-header mask-custom shadow-0 h4">Register your account</div>
					<form:form class="card-body mask-custom shadow-0" action="/register" method="POST" modelAttribute="newUser">
						<div class="form-floating mb-3 p-2">
							<form:input type="text" class="form-control" id="floatingEmail"
								placeholder="username" path="name"/> <label for="name">Username</label>
						</div>
						<div class="form-floating mb-3 p-2">
							<form:input type="email" class="form-control" id="floatingEmail"
								placeholder="name@example.com" path="email"/> <label for="email">Email
								address</label>
						</div>
						<div class="form-floating mb-3 p-2">
							<form:input type="password" class="form-control" id="floatingPassword"
								placeholder="Password" path="password"/> <label for="password">Password</label>
						</div>
						<div class="form-floating mb-3 p-2">
							<form:input type="password" class="form-control"
								id="floatingPasswordConfirm" placeholder="Confirm Password" path="confirm"/>
							<label for="confirm">Confirm Password</label>
						</div>
						<button type="submit" class="btn btn-secondary btn-lg mt-3">Register</button>
					</form:form>
				</div>
			</div>
		</div>
	</section>






	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>
</body>
</html>