package com.springtutorials.controller.admin;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ChatController {

	@GetMapping(value = {"/admin/chat"}, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ModelAndView chatPage()
	{
		return new ModelAndView("admin/product/adminChat");
	}
}
