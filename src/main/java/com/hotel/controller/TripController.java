package com.hotel.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

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

import com.hotel.domain.PicVO;
import com.hotel.domain.TripVO;
import com.hotel.service.TripService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/trip")
@Log4j
@AllArgsConstructor
public class TripController {
	private TripService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("Trip_info list");
		List<TripVO> trip = service.getList();
		model.addAttribute("trip", service.getList());
	}
	
	@GetMapping("/reguster")
	public void register() {
		
	}
	
	@PostMapping("/register")
	public String register(TripVO tVO, RedirectAttributes rttr) {
		log.info("register"+tVO);
		
		if(tVO.getAttachList() != null) {
			tVO.getAttachList().forEach(attach -> log.info(attach));
		}
		
		service.register(tVO);
		rttr.addAttribute("result", tVO.getTrip_code());
		
		return "redirect:/trip/list";
	}
	
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("trip_code") String trip_code, Model model) {
		log.info("/get or modify");
		
		model.addAttribute("trip", service.getTrip(trip_code));
	}
	
	@GetMapping("/read")
	public void read(@RequestParam("trip_code") String trip_code, Model model) {
		log.info("/read");
		
		model.addAttribute("trip", service.getTrip(trip_code));
	}
	
	@GetMapping(value="/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<PicVO>> getAttachList(String trip_code){
		log.info("getattchlist:"+trip_code);
		
		return new ResponseEntity<>(service.getAttachList(trip_code), HttpStatus.OK);
	}
	
	@PostMapping("/modify")
	public String modify(TripVO tVO, RedirectAttributes rttr) {
		log.info("modify:"+tVO);
		
		if(tVO.getAttachList() != null) {
			List<PicVO> attachList = service.getAttachList(tVO.getTrip_code());
			deleteFiles(attachList);
			tVO.getAttachList().forEach(attach -> log.info(attach));
		}
		
		boolean result = service.modify(tVO);
		
		if(result) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/trip/list";
	}
	
	@GetMapping("/delete")
	public String remove(@RequestParam("trip_code") String trip_code, RedirectAttributes rttr) {
		log.info("delete....."+trip_code);
		
		List<PicVO> attachList = service.getAttachList(trip_code);
		
		if(service.remove(trip_code)) {
			deleteFiles(attachList);
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/trip/list";
	}
	
	private void deleteFiles(List<PicVO> attachList) {
		if(attachList== null || attachList.size() == 0) {
			return;
		}
		
		attachList.forEach(attach ->{
			try {
				Path file = Paths.get("c:\\tripupload\\"+attach.getUuid()+"_"+attach.getFileName());
				Files.deleteIfExists(file);
				
				Path thumbNail = Paths.get("c:\\tripupload\\"+"s_"+attach.getUuid()+"_"+attach.getFileName());
				Files.delete(thumbNail);
			}catch(Exception e) {
				e.printStackTrace();
			}
		});
	}

}
