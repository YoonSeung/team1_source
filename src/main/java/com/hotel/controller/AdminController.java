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
	
//	@PostMapping("/monthlySales")
//	public String monthlySales(HttpServletRequest request){
//		String year = request.getParameter("year");
//		String mon = request.getParameter("month");
//		
//		String month = year + mon;
//		
//		adminService.monthlySales(month);
//		
//		log.info(month);
//		
//		return "redirect:/admin/monthlySales";
//	}
	
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

	// 사업자 관리
	@GetMapping("/businessCheck")
	public void businessCheck() {
		
	}
	
	@GetMapping("/businessInfo")
	public void businessInfo(Model model) {
		model.addAttribute("bu_list", adminService.bu_list());
		model.addAttribute("bu_count", adminService.bu_count());
	}
	
	@GetMapping("/bu_delete")
	public String bu_delete(@RequestParam("co_code") int co_code, RedirectAttributes rttr) {
		adminService.bu_delete(co_code);
		
		return "redirect:/admin/businessInfo";
	}
	
	// 페이지 준비중
	@GetMapping("/noPage")
	public void noPage() {
		
	}
}
