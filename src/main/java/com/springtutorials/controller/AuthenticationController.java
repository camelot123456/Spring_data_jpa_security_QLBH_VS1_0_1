package com.springtutorials.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.springtutorials.constant.SystemConstant;

@RestController
public class AuthenticationController {

	@GetMapping(value = {"/login"}, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ModelAndView login() {
		return new ModelAndView("authentication/login");
	}
	
	@GetMapping(value = {"/handler-logout"}, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.getSession().removeAttribute(SystemConstant.ACCOUNT);
		response.sendRedirect("/home");
	}
	
	@GetMapping(value = {"/handler-login-success"}, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public void handlerLoginSuccess(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.getSession().setAttribute(SystemConstant.ACCOUNT, SystemConstant.acconut);
		response.sendRedirect("/home");
	}
	
	@GetMapping(value = {"/404"}, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ModelAndView error() {
		return new ModelAndView("authentication/404");
	}
}
