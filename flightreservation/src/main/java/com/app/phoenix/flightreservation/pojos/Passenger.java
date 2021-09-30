package com.app.phoenix.flightreservation.pojos;

import javax.persistence.Entity;

@Entity
public class Passenger extends AbstractEntity {

	private String firstName;
	private String lastName;
	private String middleName;
	private String email;
	private String phone;

	public Passenger() {
	}

	public Passenger(String firstName, String lastName, String middleName, String email, String phone) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.middleName = middleName;
		this.email = email;
		this.phone = phone;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
