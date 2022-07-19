package com.hotel.service;

import java.util.List;


import com.hotel.domain.BusinessVO;
import com.hotel.domain.BusinessAttachVO;

public interface BusinessService {

	public List<BusinessVO>getList();

	public void register(BusinessVO vo);

	public BusinessVO getHotel(Long co_code);

	public List<BusinessAttachVO> getAttachList(Long co_code);

	public boolean modify(BusinessVO vo);

	public boolean remove(Long code);
}