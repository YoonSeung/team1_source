package com.hotel.service;


import org.springframework.stereotype.Service;

import com.hotel.domain.MemberVO;
import com.hotel.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {

	private MemberMapper mapper;
	@Override
	public void signupForm(MemberVO mVo) {
		// TODO Auto-generated method stub
		log.info("signupForm....." + mVo);
		mapper.insert(mVo);

	}
	
	@Override
	public int getMm_email(String mm_email) {
		log.info("check mm_email");
		
		return mapper.getMm_email(mm_email);
	}

}
