package com.app.phoenix.flightreservation.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.phoenix.flightreservation.dao.ReservationRequest;
import com.app.phoenix.flightreservation.pojos.Flight;
import com.app.phoenix.flightreservation.pojos.Reservation;
import com.app.phoenix.flightreservation.repos.FlightRepository;
import com.app.phoenix.flightreservation.services.ReservationService;

@Controller
public class ReservationController {

	@Autowired
	private FlightRepository flightRepository;
	
	@Autowired
	private ReservationService reservationService;

	@RequestMapping("/showCompleteReservation")
	public String showCompleteReservation(@RequestParam(name = "flightId") Long flightId, ModelMap modelMap) {
		System.out.println("/showCompleteReservation");
		Optional<Flight> flight = flightRepository.findById(flightId);
		if (flight.isPresent()) {
			modelMap.addAttribute("flight", flight.get());
		}
		return "completeReservation";
	}

	@RequestMapping(value = "/completeReservation",method = RequestMethod.POST)
	public String completeReservation(ReservationRequest reservationRequest,ModelMap modelMap) {
		Reservation reservation = reservationService.bookFlight(reservationRequest);
		modelMap.addAttribute("msg", "Reservation created successfully with PNR "+reservation.getId());
		return "reservationConfirmation";
	}
}
