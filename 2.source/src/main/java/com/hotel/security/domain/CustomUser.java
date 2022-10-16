package com.hotel.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.hotel.domain.MemberVO;

import lombok.Getter;

@Getter
public class CustomUser extends User {

	private static final long serialVersionUID = 1L;
	
	private MemberVO member;
	
	public CustomUser(String mm_email, String mm_pass, Collection<? extends GrantedAuthority> authorities) {
		super(mm_email, mm_pass, authorities);
	}
	
	public CustomUser(MemberVO vo) {
		super(vo.getMm_email(), vo.getMm_pass(),AuthorityUtils.createAuthorityList(vo.getEnabled().toString()));
		
		this.member = vo;
	}
}
