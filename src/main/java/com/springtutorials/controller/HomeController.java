package com.springtutorials.controller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class HomeController {

	@GetMapping(value = {"/", "/home"}, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ModelAndView homePage() {
		return new ModelAndView("web/home");
	}
	
}
