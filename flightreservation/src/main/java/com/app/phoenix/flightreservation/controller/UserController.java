package com.app.phoenix.flightreservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.phoenix.flightreservation.pojos.User;
import com.app.phoenix.flightreservation.repos.UserRepository;

@Controller
public class UserController {

	@Autowired
	private UserRepository userRepository;

	@RequestMapping("/showReg")
	public String showRegistrationPage() {
		return "login/registerUser";
	}
	
	@RequestMapping("/showLogin")
	public String showLoginPage() {
		return "login/login";
	}

	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public String register(@ModelAttribute User user) {
		System.out.println(user);
		userRepository.save(user);
		return "login/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("email") String email, @RequestParam("password") String password,
			ModelMap modelMap) {
		User user = userRepository.findByEmail(email);
		if (user != null) {
			if (user.getPassword().equals(password)) {
				return "findFlights";
			} else {
				modelMap.addAttribute("msg", "Invalid UserName or Password. Please try again...");
			}
		} else {
			modelMap.addAttribute("msg", "No User Exists");
		}
		return "login/login";
	}

}
