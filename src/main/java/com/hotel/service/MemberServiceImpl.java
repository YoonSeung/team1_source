package com.hotel.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.hotel.domain.Co_infoVO;
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
	public int idCheck(String mm_email) {
		// TODO Auto-generated method stub
		return mapper.idCheck(mm_email);
	}
	

}
