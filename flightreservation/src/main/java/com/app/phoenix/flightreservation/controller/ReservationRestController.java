package com.app.phoenix.flightreservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.app.phoenix.flightreservation.dao.ReservationUpdateRequest;
import com.app.phoenix.flightreservation.pojos.Reservation;
import com.app.phoenix.flightreservation.repos.ReservationRepository;

@RestController
public class ReservationRestController {

	@Autowired
	private ReservationRepository reservationRepository;

	@RequestMapping(method = RequestMethod.GET, value = "/reservations/{id}")
	public ResponseEntity<?> findById(@PathVariable(value = "id") Long reservationId) {
		try {
			return ResponseEntity.status(HttpStatus.OK).body(reservationRepository.findById(reservationId).get());
		} catch (Exception ex) {
			return ResponseEntity.status(HttpStatus.FORBIDDEN).body("NO RESERVATION FOR GIVEN PNR...");
		}
	}

	@RequestMapping("/reservations")
	public Reservation updateReservation(ReservationUpdateRequest reservationUpdateRequest) {
		Reservation reservation = reservationRepository.findById(reservationUpdateRequest.getId()).get();
		reservation.setCheckedIn(reservationUpdateRequest.getCheckedIn());
		reservation.setNumberOfBags(reservationUpdateRequest.getNumberOfBags());
		Reservation updatedReservation = reservationRepository.save(reservation);
		return updatedReservation;
	}
}
