package com.hotel.service;

import java.util.List;

import com.hotel.domain.BookingVO;
import com.hotel.domain.Co_infoVO;
import com.hotel.domain.MemberVO;

public interface AdminService {
	// 매출 관리
	public BookingVO monthlySales(String bo_code);
	
	// 고객 관리
	public List<MemberVO> mm_list();
	
	public boolean mm_delete(String mm_email);
	
	public int mm_count();
	
	// 사업자 관리
	public List<Co_infoVO> bu_list();
	
	public boolean bu_delete(int co_code);
	
	public int bu_count();
}
