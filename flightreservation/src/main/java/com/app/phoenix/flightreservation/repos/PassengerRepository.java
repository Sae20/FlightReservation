package com.app.phoenix.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.phoenix.flightreservation.pojos.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {

}
