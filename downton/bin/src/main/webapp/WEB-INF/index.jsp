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
								<form:form class="px-5 py-4" action="/login" method="POST"
									modelAttribute="newLogin">
									<div class="form-floating mb-3 p-2">
										<form:input type="email" class="form-control"
											placeholder="name@example.com" path="email" />
										<form:label path="email">Email address</form:label>
									</div>
									<div class="form-floating mb-3 p-2">
										<form:input type="password" class="form-control"
											placeholder="Password" path="password" />
										<form:label path="password">Password</form:label>
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
							<li class="nav-item"><a class="nav-link"
								href="/registration">Register</a></li>
							<li class="nav-item"><a class="nav-link" href="#!">Wiki</a></li>
							<li class="nav-item"><a class="nav-link" id="myBtn"
								href="#!">About</a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		<!-- End navbar -->

		<!-- background image -->
		<section>
			<div id="intro" class="bg-image text-center vh-100">
				
				<!-- Typewriter welcome message -->
				<div class="typewriter-wrap d-flex justify-content-center align-items-center ">
					<div class="typewriter mask-custom h4">
						Welcome to Downton Abbey
					</div>
				</div>

				<!-- About section toast (pop-up) -->
				<!-- Flexbox container for aligning the toast -->
				<div  aria-live="polite" aria-atomic="true"
					class="d-flex justify-content-center align-items-center w-100 ">
					<div class="toast p-3" data-bs-autohide="false" id="myToast">
						<div class="toast-header">
							<strong class="me-auto"><i class="bi-gift-fill"></i>
								About <br> Downton: A Visual Guide</strong>
							<button type="button" class="btn-close" data-bs-dismiss="toast"></button>
						</div>
						<div class="toast-body h6">Discover the chambers of Highclere
							Castle, the factual residence of the English royalty and the
							setting of the popular TV series Downton Abbey! This visual guide
							will cast light on lives of lords, ladies and servants of the
							estate. Interact, learn and leave comments as you navigate
							through the marvelous world of the castle dating all the way
							back to the 8th century.</div>
					</div>
				</div>
				<!-- End custom toast (pop-up) -->

			</div>
		</section>


	</header>



	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>
	<!-- Custom JS for toast (pop-up) -->
	<script src="/js/toastAbout.js"></script>
</body>
</html>