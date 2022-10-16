package com.hotel.mapper;

import java.util.List;


import com.hotel.domain.Bo_infoVO;
import com.hotel.domain.Criteria;

public interface BookingMapper {

	public List<Bo_infoVO>selectBooking();
	
	public List<Bo_infoVO> getListWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);
}
