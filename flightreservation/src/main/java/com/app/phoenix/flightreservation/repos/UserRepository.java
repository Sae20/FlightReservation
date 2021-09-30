package com.app.phoenix.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.app.phoenix.flightreservation.pojos.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String email);

}
