package com.hotel.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.hotel.domain.AdminVO;
import com.hotel.mapper.AdminMapper;
import com.hotel.security.domain.AdminUser;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class AdminUserDetailsService implements UserDetailsService {
	
	@Setter(onMethod_ = {@Autowired})
	private AdminMapper adminMapper;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		log.warn("Load Your By username : " + username);
		
		AdminVO vo = adminMapper.ad_read(username);
		
		return vo == null ? null : new AdminUser(vo);
	}

}
