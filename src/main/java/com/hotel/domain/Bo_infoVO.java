package com.hotel.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Bo_infoVO {
	private String bo_code;
	private String mm_email;
	private String ro_code;
	private String wish_code;
	private String Bo_status;
	private String checkin;
	private String checkout;
	private String enabled;
	private String ro_type;
	private String mm_name;
	private String mm_phone;
	private String ro_max;
	private Date regdate;
	private Date updatedate;
	
}
