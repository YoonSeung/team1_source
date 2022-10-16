package com.hotel.service;

import java.util.List;

import com.hotel.domain.BusinessVO;
import com.hotel.domain.Co_infoVO;
import com.hotel.domain.Room_infoVO;


public interface SearchService {

	public List<Co_infoVO> gethotelList();
	public List<Co_infoVO> getmotelList();
	public List<Co_infoVO> getresortList();
	public List<BusinessVO>getList(String co_type);
	public BusinessVO getHotel(String co_code);
}
