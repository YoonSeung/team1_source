package com.hotel.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class MemberVO {
	private String mm_email, mm_pass, mm_name, mm_gender, mm_phone,enabled;
	private Date regdate,updatedate;
	
}