<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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


						<!-- nav links -->
						<ul class="navbar-nav me-auto">
							<c:choose>
								<c:when test="${loggedUser != null}">
								<li class="nav-item"><a class="nav-link" href="/logout">Logout</a>
								</li>
								</c:when>
								<c:when test="${loggedUser == null}">
							<li class="nav-item"><a class="nav-link" href="/logout">Login</a>
							</li>
							</c:when>
							</c:choose>
							<li class="nav-item"><a class="nav-link" href="/room/1">Room
									Test</a></li>
							<li class="nav-item"><a class="nav-link" id="myBtn"
								href="#!">About</a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		<!-- End navbar -->
	</header>

	<jsp:doBody />

</body>
</html>