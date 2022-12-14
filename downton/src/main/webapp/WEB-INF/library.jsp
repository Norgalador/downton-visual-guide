<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
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
<body style="background-color: #cbbcb1;">
	<header>
		<t:navbar />
	</header>
	<section>
		<div class="mask">
			<div class="mask">
				<img class="bg-image1 vh-100 mask bg" src="${room.image}" />
			</div>
			
			<t:aboutPopup />
			
			<!-- Dropdown room info section -->
			<div class="container">
				<div class="d-flex justify-content-center align-items-center row"
					id="room-table">

					<button class="btn btn-secondary col-4 opacity-75 mb-3"
						id="room-info-btn" data-bs-toggle="collapse"
						data-bs-target="#roominfo">
						Learn about the
						<c:out value="${room.name}" />
					</button>

					<div class="collapse card card-body opacity-75 mb-3" id="roominfo">

						<div class="card-body">
							<p>The Library is one of the main rooms of Downton Abbey on
								the ground floor. The room has a collection of thousands of
								books and has its own librarian. The Library is also where Lord
								Grantham spends much of his time writing letters at his desk
								whilst Lady Grantham and the other family members may sit
								opposite one another on the red sofas that face each other on
								either side of the fireplace.</p>
						</div>
				</div>
			</div>
		</div>
		<!-- end room info section  -->

		<!-- Comments section -->
		<div class="row d-flex justify-content-center mt-5">
			<div class="col-md-8 col-lg-6">
				<button class="btn btn-secondary col-4 opacity-75 mb-3 offset-4"
					id="room-comment-btn" data-bs-toggle="collapse"
					data-bs-target="#roomcomment">What Fans are saying</button>
				<div class="card shadow-0 border opacity-100"
					style="background-color: #f0f2f5;" id="roomcomment">
					<div class="card-body p-4 ">
						<div class="form-outline mb-4">
							<form:form action="/addcomment/room1" modelAttribute="comments"
								class="form" method="post">
								<form:input path="comment" type="text" id="addANote"
									class="form-control" placeholder="Type comment..." />
								<label class="form-label" for="addANote"></label>
								<form:input type="hidden" path="user" value="${user.id}" />
								<form:input type="hidden" path="room" value="${room.id}" />
								<button type="submit" class="btn btn-secondary mt-2">Add
									comment</button>
							</form:form>
						</div>
						<c:forEach var="comment" items="${room.comments}">
							<div class="card mb-4">
								<div class="card-body">
									<p>
										<c:out value="${comment.comment}" />
									</p>
									<div class="d-flex justify-content-between">
										<div class="d-flex flex-row align-items-center">
											<img
												src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(32).webp"
												alt="avatar" width="25" height="25" />
											<p class="small mb-0 ms-2">
												<c:out value="${comment.user.name}" />
											</p>
										</div>
										<div class="d-flex flex-row align-items-center">
											<button
												onclick="window.location.href='/comment/edit/${comment.id}';"
												class="btn btn-secondary small mb-0 mx-2">Edit</button>
											<button
												onclick="window.location.href='/delete/room1/${comment.id}';"
												class="btn btn-secondary small mb-0 mx-2">Delete</button>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>

						<div class="card mb-4">
							<div class="card-body">
								<p>Type your note, and hit enter to add it</p>

								<div class="d-flex justify-content-between">
									<div class="d-flex flex-row align-items-center">
										<img
											src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(32).webp"
											alt="avatar" width="25" height="25" />
										<p class="small mb-0 ms-2">Johny</p>
									</div>
									<div class="d-flex flex-row align-items-center">
										<button
											onclick="window.location.href='/comment/edit/${comment.id}';"
											class="btn btn-secondary small mb-0 mx-2">Edit</button>
										<button
											onclick="window.location.href='/delete/${comment.id}';"
											class="btn btn-secondary small mb-0 mx-2">Delete</button>
									</div>
								</div>
							</div>
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