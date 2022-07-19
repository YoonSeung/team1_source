package com.hotel.mapper;

import java.util.List;


import com.hotel.domain.BusinessVO;

public interface BusinessMapper {

	public List<BusinessVO>selectAllHotel();
	
	public BusinessVO selectProductByCode(Long co_code);
	
	public void insertHotel(BusinessVO vo);
	
	public int updateProduct(BusinessVO vo);
	
	public int deleteHotel(Long code);
}
