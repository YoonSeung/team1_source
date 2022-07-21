package com.hotel.service;


import java.util.List;

import com.hotel.domain.Co_infoVO;
import com.hotel.domain.MemberVO;

public interface MemberService {
	

	public void signupForm(MemberVO mVo);
	public int idCheck(String mm_email);
	public MemberVO selectMemberOne(String mm_email);
	public MemberVO getSelectOne(MemberVO mVo);

}
