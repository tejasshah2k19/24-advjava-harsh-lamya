<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header text-center">
						<h3>Login</h3>
					</div>
					<div class="card-body">
						<form action="login" method="post">
							<div class="mb-3">
								<label for="email" class="form-label">Email address</label> <input
									type="email" class="form-control" id="email" name="email"
									placeholder="Enter your email" required>
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">Password</label> <input
									type="password" class="form-control" id="password"
									name="password" placeholder="Enter your password" required>
							</div>
							<div class="d-grid">
								<button type="submit" class="btn btn-primary">Login</button>
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
