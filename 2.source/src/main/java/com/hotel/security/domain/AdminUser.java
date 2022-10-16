package com.hotel.security.domain;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

import com.hotel.domain.AdminVO;

import lombok.Getter;

@Getter
public class AdminUser extends User {
	private static final long serialVersionUID = 1L;
	
	private AdminVO admin;

	public AdminUser(String ad_id, String ad_pass, Collection<? extends GrantedAuthority> code2) {
		super(ad_id, ad_pass, code2);
	}

	public AdminUser(AdminVO vo) {
		super(vo.getAd_id(), vo.getAd_pass(), AuthorityUtils.createAuthorityList(vo.getCode2().toString()));
	
		this.admin = vo;
	}
}
