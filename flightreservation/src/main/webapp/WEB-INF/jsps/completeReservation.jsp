<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*,java.sql.*"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
td {
  height: 50px;
  vertical-align: bottom;
}</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complete Reservation</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<h2 align="center">COMPLETE RESERVATION</h2><br>
	
	<table align="center" class="table" style="width:500px">

	<tr>
			<th>Airline Name</th>
			<td>${flight.operatingAirlines}</td>
		</tr>
		<tr>
			<th>Departure City</th>
			<td>${flight.departureCity}</td>
		</tr>
		<tr>
			<th>Arrival City</th>
			<td>${flight.arrivalCity}</td>
		</tr>
		<tr>
			<th>Departure Date</th>
			<td>${flight.dateOfDeparture}</td>
		</tr>
		<tr>
		<th>Departure Time</th>
		<td>${flight.departuretime}</td>
		</tr>


</table>

	
	<div class="container h-100">
		<div class="row h-100 justify-content-center align-items-center">
			<div class="col-10 col-md-8 col-lg-6"  style="height:100px; width:100px;">
				<!-- Form -->
				<form class="form-example" action="completeReservation" method="post">

					<!-- Input fields -->
					<div>
					<h2 align="center">PASSENGER DETAILS</h2>
					</div>
					<div class="form-group">
						<label for="passengerFName">First Name:</label> <input type="text"
							class="form-control email" id="passengerFName" 
							name="passengerFName">
					</div>
					
					<div class="form-group">
						<label for="passengerMName">Middle Name:</label> <input type="text"
							class="form-control email" id="passengerMName" 
							name="passengerMName">
					</div>
					<div class="form-group">
						<label for="passengerPhone">Last Name:</label> <input type="text"
							class="form-control email" id="passengerPhone" 
							name="passengerPhone">
					</div>
					
					<div class="form-group">
						<label for="passengerEmail">Email:</label> <input type="email"
							class="form-control email" id="passengerEmail" 
							name="passengerEmail">
					</div>
					<div class="form-group">
						<label for="passengerPhone">Contact:</label> <input type="text"
							class="form-control password" id="passengerPhone"
							name="passengerPhone">
					</div>
					<div>
					<h2 align="center">CARD DETAILS :</h2>
					</div>
					<div class="form-group">
						<label for="nameOnTheCard">Name on the Card:</label> <input type="text"
							class="form-control password" id="nameOnTheCard"
							name="nameOnTheCard">
					</div>
					
					<div class="form-group">
						<label for="cardNumber">Card Number: </label> <input type="text"
							class="form-control password" id="cardNumber"
							name="cardNumber">
					</div>
					<div class="form-group">
						<label for="expirationDate">Expiry Date: </label> <input type="text"
							class="form-control password" id="expirationDate"
							name="expirationDate">
					</div>
					
					<div class="form-group">
						<label for="SecurityCode">Three Digit Security Code: </label> <input type="text"
							class="form-control password" id="SecurityCode"
							name="SecurityCode">
					</div>
					<input type="hidden" name="flightId" value="${flight.id}" /> 
					<div>${flight.id}</div>
					<button type="submit"
						class="btn btn-primary btn-custom
customized">Book Flight</button>
					<!-- End input fields -->

					
				</form>

				<!-- Form end -->
			</div>
		</div>
	</div>
	
</body>
</html>