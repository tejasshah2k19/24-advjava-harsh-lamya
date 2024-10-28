<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Signup</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<%
	String firstNameError = (String) request.getAttribute("firstNameError");
	String emailError = (String) request.getAttribute("emailError");
	String passwordError = (String) request.getAttribute("passwordError");
	%>

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header text-center">
						<h3>Sign Up</h3>
					</div>
					<div class="card-body">
						<form action="SignupServlet" method="post">
							<div class="mb-3">
								<label for="firstname" class="form-label">First Name</label> <input
									type="text" class="form-control" id="firstname"
									name="firstName" placeholder="Enter your first name"> <span class="text-danger">
									<%=firstNameError == null ? "" : firstNameError%>
								</span>
							</div>
							<div class="mb-3">
								<label for="email" class="form-label">Email address</label> <input
									type="text" class="form-control" id="email" name="email"
									placeholder="Enter your email">
								<span class="text-danger"><%=emailError == null ? "" : emailError%></span>
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">Password</label> <input
									type="password" class="form-control" id="password"
									name="password" placeholder="Enter your password">
								<span class="text-danger"><%=passwordError == null ? "" : passwordError%></span>
							</div>
							<div class="d-grid">
								<button type="submit" class="btn btn-primary">Sign Up</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
