package com.hotel.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AdminVO {
	private String ad_id;
	private String code2;
	private String ad_pass;
	private String ad_name;
	private Date regdate;
	private Date updatedate;
	private String enabled;
}
