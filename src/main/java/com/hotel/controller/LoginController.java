package com.hotel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.domain.AdminVO;
import com.hotel.domain.MemberVO;
import com.hotel.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/")
@AllArgsConstructor
public class LoginController {
	
	@GetMapping("/adminLogin")
	public String adminLoginInput(String error, String logout, Model model) {
		log.info("error : " + error);
		log.info("logout : " + logout);
		
		if(error != null) {
			model.addAttribute("error", "Login Error Check Your Account");
		}
		
		if(logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
		return "/adminLogin";
	}
	
	@PostMapping("/adminLogin")
	public String adminLoginresult(String error, String logout, Model model) {
		log.info("error : " + error);
		log.info("logout : " + logout);
		
		if(error != null) {
			model.addAttribute("error", "Login Error Check Your Account");
		}
		
		if(logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
		return "redirect:/admin/monthlySales";
	}
	
	@GetMapping("/adminLogout")
	public void adminLogout() {
		
	}
	
	@PostMapping("adminLogout")
	public String logout(AdminVO adminVO, HttpSession session) throws Exception{
		return "adminLogin";
	}
}
