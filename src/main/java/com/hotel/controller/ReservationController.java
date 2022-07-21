package com.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hotel.service.BusinessService;
import com.hotel.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

//import model.Booking;
//import model.Member;
//import util.DateParse;

@Controller
@Log4j
@RequestMapping("/reserve/*")
@AllArgsConstructor
public class ReservationController {
	
//	private MemberService service;
	private BusinessService service;
	
	@GetMapping("/reserve")
	public void getreserve(Model model) {
		
	
	}
	
	@GetMapping("modify")
	public void modify(@RequestParam("co_code") Long co_code, Model model) {
		log.info("/modify");


		model.addAttribute("modify", service.getHotel(co_code));
	}
}
