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
<link href="/css/dashboard.css" rel="stylesheet" type="text/css">
<title>Downton: A Visual Guide</title>
<body>
	<t:navbar></t:navbar>
	<section>
		<img class="bg-image" src="/media/entirecast.webp">
		<div class="vh-100 mask">
			<div class="mask"></div>
			
			<t:aboutPopup></t:aboutPopup>
			
			<!-- Dropdown table for the rooms -->
			<div class="container">
				<div class="d-flex justify-content-center align-items-center row"
					id="room-table">

					<button class="btn btn-secondary col-4" id="room-table-btn"
						data-bs-toggle="collapse" data-bs-target="#roomtable">Discover
						Downton</button>

					<div class="collapse card card-body opacity-75" id="roomtable">
						<table>
							<tr>

								<th>Room Name</th>

								<th>Room Preview</th>
							</tr>
							<c:forEach items="${rooms}" var="room">

								<tr>
									<td><a href="/room/${room.id}">${room.name}</a></td>
									<td><img style="height: 60px" src="${room.image}"></td>

								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>

			<!-- End dropdown table -->

			
			
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


