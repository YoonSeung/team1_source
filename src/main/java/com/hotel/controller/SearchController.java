package com.hotel.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hotel.domain.Co_infoVO;
import com.hotel.domain.Room_infoVO;
import com.hotel.service.SearchService;
import com.hotel.util.DateParse;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/search/*")
@AllArgsConstructor
public class SearchController {
	
	private SearchService service;

	@GetMapping("/main")
	public void list(Model model) {
		model.addAttribute("today", DateParse.strToDate(DateParse.getTodayPlus(0)));
	    model.addAttribute("tomorrow", DateParse.strToDate(DateParse.getTodayPlus(1)));
		log.info("main");
		model.addAttribute("main");
	}
	
//	@GetMapping("search")
//	public 
	
	
	@GetMapping("hotelsearch")
	   public void hotelList(Model model) {
	      List<Room_infoVO> hotel = service.gethotelList();
	      model.addAttribute("hotel", hotel);
	   }
	
	@GetMapping("motelsearch")
	   public void motelList(Model model) {
	      List<Room_infoVO> motel = service.getmotelList();
	      model.addAttribute("motel", motel);
	   }
	
	@GetMapping("resortsearch")
	   public void resortList(Model model) {
	      List<Room_infoVO> resort = service.getresortList();
	      model.addAttribute("resort", resort);
	   }
	
	 
}
