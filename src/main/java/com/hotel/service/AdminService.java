package com.hotel.service;

import java.util.List;

import com.hotel.domain.BookingVO;
import com.hotel.domain.MemberVO;

public interface AdminService {
	// 매출 관리
	public BookingVO monthlySales(String bo_code);
	
	// 고객 관리
	public List<MemberVO> mm_list();
	
	public boolean mm_delete(String mm_email);
	
	public int mm_count();
}
