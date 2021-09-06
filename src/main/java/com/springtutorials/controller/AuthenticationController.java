package com.springtutorials.controller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AuthenticationController {

	@GetMapping(value = {"/login"}, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ModelAndView login() {
		return new ModelAndView("authentication/login");
	}
	
}
