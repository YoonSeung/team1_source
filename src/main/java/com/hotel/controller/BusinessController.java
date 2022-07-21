package com.hotel.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;



import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import com.hotel.domain.Criteria;
import com.hotel.domain.PageDTO;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hotel.domain.Bo_infoVO;
import com.hotel.domain.BusinessAttachVO;
import com.hotel.domain.BusinessVO;
import com.hotel.service.BusinessService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/business/*")
@AllArgsConstructor
public class BusinessController {
	private BusinessService service;
	@GetMapping("main")
	public void list(Model model) {
		log.info("businessmain");
		model.addAttribute("main");
	}

	@GetMapping("myhotel")
	public void hotelList(Model model) {
		log.info("businessmyhotel");
		List<BusinessVO> myhotel = service.getList();
		model.addAttribute("myhotel", myhotel);
	}

	@GetMapping("register")
	public void hotelInsert(Model model) {
		log.info("businessinsert");
		model.addAttribute("register");
	}

	@PostMapping("register")
	public String register(BusinessVO business, RedirectAttributes rttr) {
		log.info("register"+business);

		if(business.getAttachList() != null) {
			business.getAttachList().forEach(attach -> log.info(attach));
		}

		service.register(business);
		rttr.addAttribute("result", business.getCo_code());

		return "redirect:/business/myhotel";
	}

	@GetMapping(value="/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<BusinessAttachVO>> getAttachList(Long co_code){
		log.info("getattchlist:"+co_code);
		return new ResponseEntity<>(service.getAttachList(co_code), HttpStatus.OK);
	}

	@GetMapping("get")
	public void get(@RequestParam("co_code") Long co_code, Model model) {
		log.info("/get");


		model.addAttribute("get", service.getHotel(co_code));
	}

	@GetMapping("modify")
	public void modify(@RequestParam("co_code") Long co_code, Model model) {
		log.info("/modify");


		model.addAttribute("modify", service.getHotel(co_code));
	}

	@PostMapping("/modify")
	public String modify(BusinessVO vo, RedirectAttributes rttr) {
		log.info("modify:"+vo);

		if(vo.getAttachList() != null) {
			List<BusinessAttachVO> attachList = service.getAttachList(vo.getCo_code());
			deleteFiles(attachList);
			vo.getAttachList().forEach(attach -> log.info(attach));
		}

		boolean result = service.modify(vo);

		if(result) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/business/myhotel";
	}


	@GetMapping("/delete")
	public String remove(@RequestParam(value="co_code",required =false) Long co_code, RedirectAttributes rttr) {
		log.info("delete....."+co_code);

		List<BusinessAttachVO> attachList = service.getAttachList(co_code);

		if(service.remove(co_code)) {
			deleteFiles(attachList);
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/business/myhotel";
	}

	private void deleteFiles(List<BusinessAttachVO> attachList) {
		if(attachList== null || attachList.size() == 0) {
			return;
		}

		attachList.forEach(attach ->{
			try {
				Path file = Paths.get("c:\\hotelUpload\\"+attach.getUuid()+"_"+attach.getFileName());
				Files.deleteIfExists(file);

				Path thumbNail = Paths.get("c:\\hotelUpload\\"+"s_"+attach.getUuid()+"_"+attach.getFileName());
				Files.delete(thumbNail);
			}catch(Exception e) {
				e.printStackTrace();
			}
		});
		
	
		}
	@GetMapping("booking")
	public void bookingList(Criteria cri, Model model) {
		log.info("bookingList"+cri);
		
		model.addAttribute("booking", service.getBlist(cri));
		
		int total = service.getTotal(cri);
		
		log.info("total :"+ total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
}