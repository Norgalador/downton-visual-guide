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
<link href="/css/room.css" rel="stylesheet" type="text/css">
<title>Downton: A Visual Guide</title>
<body style="background-color:  #cbbcb1;">
	<header>
		<!-- navbar -->
		<nav
			class="navbar navbar-expand-lg navbar-light fixed-top mask-custom shadow-0">
			<div class="container">
				<a class="navbar-brand" style="color: black;">Downton: A Visual
					Guide</a>
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


						<!-- nav links -->
						<ul class="navbar-nav me-auto offset-1">
							<li class="nav-item"><a class="nav-link"
								style="color: #D9DAD8;" href="/logout">Logout</a></li>
							<li class="nav-item"><a class="nav-link"
								style="color: #D9DAD8;" href="#!">Wiki</a></li>
							<li class="nav-item"><a class="nav-link"
								style="color: #D9DAD8;" id="myBtn" href="#!">About</a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		<!-- End navbar -->
	</header>
	<section>
		<div class="bg-image4 vh-100 mask">
			<div class="mask"
				style="background-color: rgba(250, 182, 162, 0.15);"></div>

			

			<!-- About section toast (pop-up) -->
			<!-- Flexbox container for aligning the toast -->
			<div aria-live="polite" aria-atomic="true"
				class="d-flex justify-content-center align-items-center w-100 ">
				<div class="toast p-3" data-bs-autohide="false" id="myToast">
					<div class="toast-header h5">
						<strong class="me-auto"><i class="bi-gift-fill"></i>
							About <br> Downton: A Visual Guide</strong>
						<button type="button" class="btn-close" data-bs-dismiss="toast"></button>
					</div>
					<div class="toast-body h6">Discover the chambers of Highclere
						Castle, the factual residence of the English royalty and the
						setting of the popular TV series Downton Abbey! This visual guide
						will cast light on lives of lords, ladies and servants of the
						estate. Interact, learn and leave comments as you navigate through
						the marvelous world of the castle dating all the way back to the
						8th century.</div>
				</div>
			</div>
			<!-- End custom toast (pop-up) -->

			<!-- Comments section -->
			<div class="row d-flex justify-content-center mt-5">
				<div class="col-md-8 col-lg-6">
				<button class="btn btn-secondary col-4 opacity-75 mb-3 offset-4"
						id="room-comment-btn" data-bs-toggle="collapse"
						data-bs-target="#roomcomment">What Do you Really Want to Say</button>
					<div class="card shadow-0 border opacity-100"
						style="background-color: #f0f2f5;" id="roomcomment">
						<div class="card-body p-4 ">
							<div class="form-outline mb-4">
							<form:form action="/edit/room1/${editComment.id }" modelAttribute="editComment" class="form" method="put">
								<form:input path="comment" type="text" id="addANote" class="form-control"
									placeholder="Type comment..." /> <label class="form-label"
									for="addANote"></label>
									<form:input type="hidden" path="user" value="${user.id}"/> <!-- loggedUser.id -->
									<form:input type="hidden" path="room" value="${room.id}"/> <!-- editComment.room -->
								<button type="submit" class="btn btn-secondary mt-2">Edit comment</button>
							</form:form>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			<!-- End comments section -->
		</div>
	</section>


	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>
	<!-- Custom JS for toast (pop-up) -->
	<script src="/js/toastAbout.js"></script>
</body>
</html>