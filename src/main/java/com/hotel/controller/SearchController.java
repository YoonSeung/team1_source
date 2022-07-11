package com.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/search/*")
@AllArgsConstructor
public class SearchController {
	

	@GetMapping("/main")
	public void list(Model model) {
		log.info("main");
		model.addAttribute("main");
	}
	
}
