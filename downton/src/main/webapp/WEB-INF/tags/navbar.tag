<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>

	<header>
		<!-- navbar -->
		<nav
			class="navbar navbar-expand-lg navbar-light fixed-top mask-custom shadow-0">
			<div class="container">
				<a class="navbar-brand">Downton: A Visual Guide</a>

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
						<c:if test="${loggedUser == null}">
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
										<button type="submit" class="btn btn-secondary btn-lg mt-3">Sign
											in</button>
									</form:form>
								</div>
							</div>
						</c:if>
						<!-- End dropdown -->

						<!-- nav links -->
						<ul class="navbar-nav me-auto">
							<c:if test="${loggedUser != null}">
								<li class="nav-item"><a class="nav-link" href="/dashboard">Home</a></li>
							</c:if>
							<!-- <li class="nav-item"><a class="nav-link" href="/room/1">Room
									Test</a></li> -->
							<li class="nav-item"><a class="nav-link" id="myBtn"
								href="#!">About</a></li>

							<c:if test="${loggedUser != null}">
								<li class="nav-item"><a class="nav-link" href="/logout">Logout</a>
								</li>
							</c:if>
						</ul>
						<!-- Downton Main Theme audio player -->
						<div class="mx-2">
							<button class="btn btn-secondary fs-3" data-bs-toggle="collapse"
								data-bs-target="#audio">Music</button>
						</div>
						<div>
							<div class="collapse collapse-horizontal" id="audio">
								<audio controls autoplay>
									<source src="/media/DowntonAbbeyTheme.mp3" type="audio/mpeg" />
								</audio>
							</div>
						</div>
						<!-- End audio player -->
					</div>
				</div>
			</div>
		</nav>
		<!-- End navbar -->
	</header>

	<jsp:doBody />

</body>
</html>