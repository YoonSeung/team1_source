package com.hotel.mapper;

import java.util.List;

import com.hotel.domain.TripVO;

public interface TripMapper {
	public List<TripVO> selectAllTrip();
	
	public void insertTrip(TripVO tVO);
	
	public TripVO selectProductByCode(String trip_code);
	
	public int updateProduct(TripVO tVO);
	
	public int deleteTrip(String trip_code);
}
