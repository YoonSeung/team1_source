package com.hotel.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hotel.service.AdminService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/admin/*")
@Log4j
@AllArgsConstructor
public class AdminController {
	private AdminService adminService;
	
	// 매출 관리
	@GetMapping("/monthlySales")
	public void monthlySales() {
		
	}
	
	@PostMapping("/monthlySales")
	public String monthlySales(HttpServletRequest request){
		String year = request.getParameter("year");
		String mon = request.getParameter("month");
		
		String month = year + mon;
		
		adminService.monthlySales(month);
		
		log.info(month);
		
		return "redirect:/admin/monthlySales";
	}
	
	@GetMapping("/dailySales")
	public void dailySales() {
		
	}
	
	@GetMapping("/categorySales")
	public void categorySales() {
		
	}
	
	@GetMapping("/regionalSales")
	public void regionalSales() {
		
	}
	
	// 고객 관리
	@GetMapping("/memberInfo")
	public void memberInfo(Model model) {
		model.addAttribute("mm_list", adminService.mm_list());
		model.addAttribute("mm_count", adminService.mm_count());
	}
	
	@GetMapping("/mm_delete")
	public String mm_delete(@RequestParam("mm_email") String mm_email, RedirectAttributes rttr) {
		adminService.mm_delete(mm_email);
		
		return "redirect:/admin/memberInfo";
	}
}
