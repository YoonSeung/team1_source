package com.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//import model.Booking;
//import model.Member;
//import util.DateParse;

@Controller
@RequestMapping("/reservation/*")
public class ReservationController {

//	@RequestMapping("reserve")
//	public String reserve(Bo_info booking) {
//		String email = (String) session.getAttribute("email");
//		Member m=null;
//		
//		try {
//			m = memberService.getMemberOne(email);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		int night = DateParse.dateDif(booking.getCheckin(), booking.getCheckout()); // (checkout-checkin)
//		booking.setPrice((Integer.parseInt(booking.getPrice()) * night)+"");
//		booking.setEmail(email);
//		
//		session.setAttribute("booking", booking);
//		model.addAttribute("member", m);
//		
//		return "/view/reserve/reserve";
//	}
}
