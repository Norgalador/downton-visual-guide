<%@ tag language="java" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>

	<!-- About section toast (pop-up) -->
	<!-- Flexbox container for aligning the toast -->
	<div aria-live="polite" aria-atomic="true"
		class="d-flex justify-content-center align-items-center w-100 ">
		<div class="toast p-3" data-bs-autohide="false" id="myToast">
			<div class="toast-header h5">
				<strong class="me-auto"><i class="bi-gift-fill"></i> About
					<br> Downton: A Visual Guide</strong>
				<button type="button" class="btn-close" data-bs-dismiss="toast"></button>
			</div>
			<div class="toast-body h6">Discover the chambers of Highclere
				Castle, the factual residence of the English royalty and the setting
				of the popular TV series Downton Abbey! This visual guide will cast
				light on lives of lords, ladies and servants of the estate.
				Interact, learn and leave comments as you navigate through the
				marvelous world of the castle dating all the way back to the 8th
				century.</div>
		</div>
	</div>
	<!-- End custom toast (pop-up) -->
<jsp:doBody />
</body>
</html>