package com.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/common/*")
@AllArgsConstructor
public class CommonController {

	
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "/common/loginForm";
	}
}
