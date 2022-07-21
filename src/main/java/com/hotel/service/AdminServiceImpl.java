package com.hotel.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hotel.domain.BookingVO;
import com.hotel.domain.MemberVO;
import com.hotel.mapper.AdminMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class AdminServiceImpl implements AdminService {
	private AdminMapper adminMapper;
	
	// 매출 관리
	@Override
	public BookingVO monthlySales(String month) {
		log.info(month);
		
		return adminMapper.monthlySales(month);
	}
	
	// 고객 관리
	@Override
	public List<MemberVO> mm_list() {
		return adminMapper.mm_list();
	}
	
	@Override
	public boolean mm_delete(String mm_email) {
		return adminMapper.mm_delete(mm_email) == 1;
	}
	
	@Override
	public int mm_count() {
		return adminMapper.mm_count();
	}
}
