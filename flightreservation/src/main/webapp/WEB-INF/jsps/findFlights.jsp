<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
h2{

 text-align: center;
}
</style>
<meta charset="ISO-8859-1">
<title>Find Flights</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<h2   style="color:black;" >FLIGHT SEARCH : </h2>
<body>

<div class="container h-100">
		<div class="row h-100 justify-content-center align-items-center">
			<div class="col-10 col-md-8 col-lg-6"  style="height:100px; width:100px;">
				<!-- Form -->
				<form class="form-example" action="findFlights" method="post">

					<!-- Input fields -->
					<div class="form-group">
						<label for="from">From:</label> <input type="text"
							class="form-control email" id="from" placeholder="from"
							name="from">
					</div>
					<div class="form-group">
						<label for="to">To:</label> <input type="text"
							class="form-control password" id="to"
							placeholder="to"name="to">
					</div>
						<div class="form-group">
						<label for="departureDate">Deparature Date:</label> <input type="date"
							class="form-control password" id="departureDate"
							name="departureDate">
					</div>
					<button type="submit"
						class="btn btn-primary btn-custom
customized">Search</button>
					<!-- End input fields -->

					${requestScope.msg}
				</form>

				<!-- Form end -->
			</div>
		</div>
	</div>
</body>
</html>