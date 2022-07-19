package com.hotel.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hotel.domain.RoomVO;
import com.hotel.mapper.RoomMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class RoomServiceImpl implements RoomService {
	private RoomMapper mapper;
	@Override
	public List<RoomVO> getList() {
		// TODO Auto-generated method stub
		log.info("room list");
		return mapper.selectAllRoom();
	}
	

}
