package com.app.phoenix.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.phoenix.flightreservation.pojos.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}
