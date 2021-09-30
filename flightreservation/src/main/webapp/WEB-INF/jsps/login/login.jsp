<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>User Login</title>
</head>
<body>
	<h2 align="center">LOGIN </h2>
	<div class="container h-100">
		<div class="row h-100 justify-content-center align-items-center">
			<div class="col-10 col-md-8 col-lg-6"  style="height:100px; width:100px;">
				<!-- Form -->
				<form class="form-example" action="login" method="post">

					<!-- Input fields -->
					<div class="form-group">
						<label for="email">Email:</label> <input type="text"
							class="form-control email" id="email" placeholder="email..."
							name="email">
					</div>
					<div class="form-group">
						<label for="password">Password:</label> <input type="password"
							class="form-control password" id="password"
							placeholder="Password..." name="password">
					</div>
					<button type="submit"
						class="btn btn-primary btn-custom
customized">Login</button>
					<!-- End input fields -->

					${requestScope.msg}
				</form>

				<!-- Form end -->
			</div>
		</div>
	</div>


</body>
</html>