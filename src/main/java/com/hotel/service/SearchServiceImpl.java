package com.hotel.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hotel.domain.Co_infoVO;
import com.hotel.domain.Room_infoVO;
import com.hotel.mapper.SearchMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class SearchServiceImpl implements SearchService {

	private SearchMapper mapper;
	
	@Override
	public List<Room_infoVO>  gethotelList() {
		return mapper.gethotelList();
	}

	@Override
	public List<Room_infoVO> getmotelList() {
		// TODO Auto-generated method stub
		return mapper.getmotelList();
	}

	@Override
	public List<Room_infoVO> getresortList() {
		// TODO Auto-generated method stub
		return mapper.getresortList();
	}
	
	
	
	


}
