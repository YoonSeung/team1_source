package com.hotel.service;

import java.util.List;

import com.hotel.domain.PicVO;
import com.hotel.domain.TripVO;

public interface TripService {
	public List<TripVO> getList();
	
	public void register(TripVO tVO);
	
	public TripVO getTrip(String trip_code);
	
	public List<PicVO> getAttachList(String trip_code);
	
	public boolean modify(TripVO tVO);
	
	public boolean remove(String trip_code);

}
