package com.app.phoenix.flightreservation.pojos;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Entity;

@Entity
public class Flight extends AbstractEntity{

	private String flightNumber;
	private String operatingAirlines;
	private String departureCity;
	private String arrivalCity;
	private Date dateOfDeparture;
	private Timestamp departuretime;
	
	
	public Flight() {
	}


	public Flight(String flightNumber, String operatingAirlines, String departureCity, String arrivalCity,
			Date dateOfDeparture, Timestamp departuretime) {
		super();
		this.flightNumber = flightNumber;
		this.operatingAirlines = operatingAirlines;
		this.departureCity = departureCity;
		this.arrivalCity = arrivalCity;
		this.dateOfDeparture = dateOfDeparture;
		this.departuretime = departuretime;
	}


	public String getFlightNumber() {
		return flightNumber;
	}


	public void setFlightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}


	public String getOperatingAirlines() {
		return operatingAirlines;
	}


	public void setOperatingAirlines(String operatingAirlines) {
		this.operatingAirlines = operatingAirlines;
	}


	public String getDepartureCity() {
		return departureCity;
	}


	public void setDepartureCity(String departureCity) {
		this.departureCity = departureCity;
	}


	public String getArrivalCity() {
		return arrivalCity;
	}


	public void setArrivalCity(String arrivalCity) {
		this.arrivalCity = arrivalCity;
	}


	public Date getDateOfDeparture() {
		return dateOfDeparture;
	}


	public void setDateOfDeparture(Date dateOfDeparture) {
		this.dateOfDeparture = dateOfDeparture;
	}


	public Timestamp getDeparturetime() {
		return departuretime;
	}


	public void setDeparturetime(Timestamp departuretime) {
		this.departuretime = departuretime;
	}

	
}
















