package com.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hotel.service.BusinessService;
import com.hotel.service.MemberService;
import com.hotel.service.SearchService;

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
	
	private SearchService searchservice;
	private BusinessService service;
	
	@GetMapping("/reserve")
	public void getreserve(@RequestParam( required=false ,name="co_code") String co_code , Model model) {
		log.info("/get");


		model.addAttribute("get", searchservice.getHotel(co_code));
	}
	
	@PostMapping("/reserve")
	public String postreserve(@RequestParam( required=false ,name="co_code") String co_code , Model model) {
		log.info("/get");


		return "redirect:/reserve/reserveresult";
	}
	
	@GetMapping("/reserveresult")
	public void getreserveresult(@RequestParam( required=false ,name="co_code") String co_code , Model model) {
		log.info("/get");


		model.addAttribute("get", searchservice.getHotel(co_code));
	}
	
	@GetMapping("modify")
	public void modify(@RequestParam("co_code") Long co_code, Model model) {
		log.info("/modify");


		model.addAttribute("modify", service.getHotel(co_code));
	}
}
