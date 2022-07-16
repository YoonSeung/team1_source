package com.hotel.service;

import java.util.List;

import com.hotel.domain.Co_infoVO;
import com.hotel.domain.Room_infoVO;


public interface SearchService {

	public List<Room_infoVO> gethotelList();
	public List<Room_infoVO> getmotelList();
	public List<Room_infoVO> getresortList();
}
