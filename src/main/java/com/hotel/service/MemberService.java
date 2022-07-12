package com.hotel.service;


import com.hotel.domain.MemberVO;


public interface MemberService {
	

	public void signupForm(MemberVO mVo);
	public int getMm_email(String mm_email);


}
