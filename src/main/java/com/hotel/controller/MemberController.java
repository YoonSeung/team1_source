package com.hotel.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hotel.domain.MemberVO;
import com.hotel.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
@AllArgsConstructor
public class MemberController{
	
	private MemberService service;
	

	@GetMapping("/signupForm")
	public void signupForm() {
		
	}
	
	@PostMapping("/signupForm")
	public String register(MemberVO mVo, RedirectAttributes rttr) {
		log.info("signupForm:" + mVo);
		
		int checkid = service.idCheck(mVo.getMm_email());
		if(checkid>0) {
			rttr.addFlashAttribute("result","exit");
		}else {
			service.signupForm(mVo);
			rttr.addFlashAttribute("result", "insert");
		}
		
		return "redirect:/common/loginForm";
	}
	
	@RequestMapping(value = "/checkSignup", method = RequestMethod.POST)	
	public @ResponseBody String AjaxView(@RequestParam("mm_email") String mm_email){		
		String str = "";		
		int idcheck = service.idCheck(mm_email);		
		if(idcheck==1){ //이미 존재하는 계정			
			str = "NO";			
			}else{	//사용 가능한 계정			
				str = "YES";			
				}		
		return str;	
		}

}

