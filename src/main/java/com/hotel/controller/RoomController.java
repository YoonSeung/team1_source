package com.hotel.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;


import com.hotel.domain.RoomVO;
import com.hotel.service.RoomService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/room/*")
@AllArgsConstructor
public class RoomController {
			private RoomService service;
		
			@GetMapping("room")
			public void RoomList(Model model) {
				log.info("businessmyhotel");
				List<RoomVO> room = service.getList();
				model.addAttribute("room", room);
			}
	}