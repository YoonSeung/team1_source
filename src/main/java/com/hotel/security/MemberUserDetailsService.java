package com.hotel.security;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.hotel.domain.MemberVO;
import com.hotel.mapper.MemberMapper;
import com.hotel.security.domain.CustomUser;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class MemberUserDetailsService implements UserDetailsService {
	@Setter(onMethod_ = {@Autowired})
	private MemberMapper memberMapper;
	
	@Override
	public UserDetails loadUserByUsername(String mm_email) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		log.warn("Load User By UserName: " + mm_email);
		
		MemberVO vo = memberMapper.read(mm_email);
		
		log.warn("queried by member mapper: " + vo);
				
		return vo == null ? null : new CustomUser(vo);
	}

}
