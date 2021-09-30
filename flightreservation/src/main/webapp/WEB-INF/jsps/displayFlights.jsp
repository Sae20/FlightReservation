<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*,java.sql.*"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DISPLAY FLIGHTS :</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<h2>DISPLAY FLIGHTS :</h2>
<h1 style="color: red;">${msg}</h1>
<body>
	
	<table class="table">
  <thead class="thead-dark">
    <tr>
     <th scope="col">Airline Name</th>
			<th scope="col">Departure City</th>
			<th scope="col">Arrival City</th>
			<th scope="col">Departure Date</th>
			<th scope="col">Departure Time</th>
			<th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
   
<c:forEach items="${flights}" var="flight">
			<tr>
				<td>${flight.operatingAirlines}</td>
				<td>${flight.departureCity}</td>
				<td>${flight.arrivalCity}</td>
				<td>${flight.dateOfDeparture}</td>
				<td>${flight.departuretime}</td>
				<td><a href="showCompleteReservation?flightId=${flight.id}">SELECT</a></td>
			</tr>
		</c:forEach>
</tbody>
</table>
</body>
</html>