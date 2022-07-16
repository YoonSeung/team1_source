package com.hotel.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/common/*")
@AllArgsConstructor
public class CommonController {

	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) { 
		log.info("access Denied: "+auth);
		
		model.addAttribute("msg", "Access Denied");
	}
	
	@GetMapping("/loginForm")
	public String loginForm(String error, String logout, Model model) {
		log.info("error: "+ error);
		log.info("logOut: " +logout);
		
		if(error != null) {
			model.addAttribute("error", "Login Error Check Your Account");
		}
		
		if(logout != null) {
			model.addAttribute("logout", "Logout!!"); 
		}
		return "/common/loginForm";
	}
}
