package com.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hotel.domain.BusinessVO;
import com.hotel.domain.Co_infoVO;
import com.hotel.domain.Room_infoVO;
import com.hotel.service.BusinessService;
import com.hotel.service.SearchService;
import com.hotel.service.TripService;
import com.hotel.util.DateParse;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/search/*")
@AllArgsConstructor
public class SearchController {
	
	private SearchService service;
	private BusinessService buservice; 
	private TripService tripservice;

	@GetMapping("/main")
	public void list(Model model) {
		model.addAttribute("today", DateParse.strToDate(DateParse.getTodayPlus(0)));
	    model.addAttribute("tomorrow", DateParse.strToDate(DateParse.getTodayPlus(1)));
		log.info("main");
		model.addAttribute("main");
	}
	
	@PostMapping("/main")
	public String search(Model model, HttpServletRequest request) {
		
		String date1 = request.getParameter("date1");
		String date2 = request.getParameter("date2");
		String date3 = request.getParameter("date3");
	
		service.getList(date3);
		return "redirect:/search/hotelsearch";
	}
	
	@GetMapping("/searchdetail")
	public void searchdetail(Model model) {
		List<BusinessVO> myhotel = buservice.getList();
		model.addAttribute("myhotel", myhotel);
	}
	
	
	@GetMapping("hotelsearch")
	   public void hotelList(Model model) {
	      List<Co_infoVO> hotel = service.gethotelList();
	      model.addAttribute("hotel", hotel);
	   }
	
	@PostMapping("hotelsearch")
	   public String hotelListpost(Model model) {

	      return "redirect:../reserve/reserve";
	   }

	
	@GetMapping("motelsearch")
	   public void motelList(Model model) {
	      List<Co_infoVO> motel = service.getmotelList();
	      model.addAttribute("motel", motel);
	   }
	
	@GetMapping("resortsearch")
	   public void resortList(Model model) {
	      List<Co_infoVO> resort = service.getresortList();
	      model.addAttribute("resort", resort);
	   }
	
	@GetMapping("/get")
	public void get(@RequestParam("trip_code") String trip_code, Model model) {
		log.info("/get ");
		
		model.addAttribute("trip", tripservice.getTrip(trip_code));
	}
	
	@GetMapping("/about")
	public void about(Model model) {

	}
	
	@GetMapping("/qna")
	public void qna(Model model) {

	}
	
		
	 
}
