package com.app.phoenix.flightreservation.services;

import org.springframework.stereotype.Service;

import com.app.phoenix.flightreservation.dao.ReservationRequest;
import com.app.phoenix.flightreservation.pojos.Reservation;


public interface ReservationService {
	
	public Reservation bookFlight(ReservationRequest reservationRequest);

}
