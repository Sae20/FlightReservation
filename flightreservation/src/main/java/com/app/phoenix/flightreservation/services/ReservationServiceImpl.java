package com.app.phoenix.flightreservation.services;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.phoenix.flightreservation.dao.ReservationRequest;
import com.app.phoenix.flightreservation.pojos.Flight;
import com.app.phoenix.flightreservation.pojos.Passenger;
import com.app.phoenix.flightreservation.pojos.Reservation;
import com.app.phoenix.flightreservation.repos.FlightRepository;
import com.app.phoenix.flightreservation.repos.PassengerRepository;
import com.app.phoenix.flightreservation.repos.ReservationRepository;




@Service
@Transactional
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private FlightRepository flightRepository;

	@Autowired
	private PassengerRepository passengerRepository;

	@Autowired
	private ReservationRepository reservationRepository;

	@Override
	public Reservation bookFlight(ReservationRequest reservationRequest) {

		// Make Payment

		Long flightId = reservationRequest.getFlightId();
		Flight flight = new Flight();
		Optional<Flight> flightObj = flightRepository.findById(flightId);
		if (flightObj.isPresent()) {
			flight = flightObj.get();
		}

		Passenger passenger = new Passenger();
		passenger.setFirstName(reservationRequest.getPassengerFName());
		passenger.setMiddleName(reservationRequest.getPassengerMName());
		passenger.setLastName(reservationRequest.getPassengerLName());
		passenger.setEmail(reservationRequest.getPassengerEmail());
		passenger.setPhone(reservationRequest.getPassengerPhone());
		Passenger savedPassenger = passengerRepository.save(passenger);

		Reservation reservation = new Reservation();
		reservation.setFlight(flight);
		reservation.setPassenger(savedPassenger);
		reservation.setCheckedIn(false);
		Reservation savedReservation = reservationRepository.save(reservation);

		return savedReservation;
	}

}
