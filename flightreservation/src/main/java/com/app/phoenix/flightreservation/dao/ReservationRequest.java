package com.app.phoenix.flightreservation.dao;

public class ReservationRequest {

	private Long flightId;
	private String passengerFName;
	private String passengerMName;
	private String passengerLName;
	private String passengerEmail;
	private String passengerPhone;
	private String nameOnTheCard;
	private String cardNumber;
	private String expirationDate;
	private String securityCode;
	
	public ReservationRequest() {
	}

	public ReservationRequest(Long flightId, String passengerFName, String passengerMName, String passengerLName,
			String passengerEmail, String passengerPhone, String nameOnTheCard, String cardNumber,
			String expirationDate, String securityCode) {
		super();
		this.flightId = flightId;
		this.passengerFName = passengerFName;
		this.passengerMName = passengerMName;
		this.passengerLName = passengerLName;
		this.passengerEmail = passengerEmail;
		this.passengerPhone = passengerPhone;
		this.nameOnTheCard = nameOnTheCard;
		this.cardNumber = cardNumber;
		this.expirationDate = expirationDate;
		this.securityCode = securityCode;
	}

	public Long getFlightId() {
		return flightId;
	}

	public void setFlightId(Long flightId) {
		this.flightId = flightId;
	}

	public String getPassengerFName() {
		return passengerFName;
	}

	public void setPassengerFName(String passengerFName) {
		this.passengerFName = passengerFName;
	}

	public String getPassengerMName() {
		return passengerMName;
	}

	public void setPassengerMName(String passengerMName) {
		this.passengerMName = passengerMName;
	}

	public String getPassengerLName() {
		return passengerLName;
	}

	public void setPassengerLName(String passengerLName) {
		this.passengerLName = passengerLName;
	}

	public String getPassengerEmail() {
		return passengerEmail;
	}

	public void setPassengerEmail(String passengerEmail) {
		this.passengerEmail = passengerEmail;
	}

	public String getPassengerPhone() {
		return passengerPhone;
	}

	public void setPassengerPhone(String passengerPhone) {
		this.passengerPhone = passengerPhone;
	}

	public String getNameOnTheCard() {
		return nameOnTheCard;
	}

	public void setNameOnTheCard(String nameOnTheCard) {
		this.nameOnTheCard = nameOnTheCard;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	public String getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(String expirationDate) {
		this.expirationDate = expirationDate;
	}

	public String getSecurityCode() {
		return securityCode;
	}

	public void setSecurityCode(String securityCode) {
		this.securityCode = securityCode;
	}

	


	
}
