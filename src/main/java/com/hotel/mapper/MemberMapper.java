package com.hotel.mapper;



import com.hotel.domain.MemberVO;

public interface MemberMapper {

	public void insert(MemberVO Member);
	public MemberVO read(String mm_email);
	public int idCheck(String mm_email);
}
