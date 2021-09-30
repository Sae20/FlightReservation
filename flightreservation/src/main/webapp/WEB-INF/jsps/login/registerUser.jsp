<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Register User</title>
</head>
<body>
	<h2 align="center">USER REGISTRATION :</h2>
	<div class="container h-100"></div>
	<div class="row h-100 justify-content-center align-items-center">
		<div class="col-10 col-md-8 col-lg-6"
			style="height: 100px; width: 300px;">

			<form action="registerUser" method="post">
				<div class="form-group row">
					<label for="firstName" class="col-sm-2 col-form-label">First
						Name:</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="firstName"
							placeholder="Enter First Name" name="firstName">
					</div>
				</div>
				<div class="form-group row">
					<label for="firstName" class="col-sm-2 col-form-label">Last
						Name:</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="lastName"
							placeholder="Enter Last Name" name="lastName">
					</div>
				</div>
				<div class="form-group row">
					<label for="email" class="col-sm-2 col-form-label">Email:</label>
					<div class="col-sm-7">
						<input type="email" class="form-control" id="email"
							placeholder="Enter email" name="email">
					</div>
				</div>
				<div class="form-group row">
					<label for="password" class="col-sm-2 col-form-label">Password:</label>
					<div class="col-sm-7">
						<input type="password" class="form-control" id="password"
							placeholder="Enter password" name="password">
					</div>
				</div>
				<div class="form-group row">
					<label for="confirmPassword" class="col-sm-2 col-form-label">Confirm
						Password:</label>
					<div class="col-sm-7">
						<input type="password" class="form-control" id="confirmPassword"
							placeholder="Confirm password" name="confirmPassword">
					</div>
				</div>
				<div class="checkbox">
					<label><input type="checkbox" name="remember">
						Remember me</label>
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
	</div>
	</div>
</body>
</html>