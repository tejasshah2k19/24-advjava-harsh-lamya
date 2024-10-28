<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bootstrap Calculator</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="bg-light">
	<div class="container mt-5">
		<div class="card">
			<div class="card-body">
				<h1 class="card-title text-center">  Calculator</h1>
				<form action="CalcServlet" method="post">
					<div class="mb-3">
						<label for="num1" class="form-label">Number 1:</label> <input
							type="text" class="form-control" name="num1"  >
					</div>
					<div class="mb-3">
						<label for="num2" class="form-label">Number 2:</label> <input
							type="text" class="form-control" name="num2"  >
					</div>

					<div class="mb-3">
						<label class="form-label">Operation:</label>
						<div class="form-check">
							<input type="radio" class="form-check-input" id="add"
								name="operation" value="add"  > <label
								class="form-check-label" for="add">Add</label>
						</div>
						<div class="form-check">
							<input type="radio" class="form-check-input" id="sub"
								name="operation" value="sub"> <label
								class="form-check-label" for="sub">Subtract</label>
						</div>
						<div class="form-check">
							<input type="radio" class="form-check-input" id="mul"
								name="operation" value="mul"> <label
								class="form-check-label" for="mul">Multiply</label>
						</div>
					</div>

					<div class="d-grid">
						<button type="submit" class="btn btn-primary">Calculate</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS and Popper.js -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
