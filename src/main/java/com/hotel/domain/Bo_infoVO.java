package com.hotel.domain;

import java.util.Date;

import lombok.Data;

import lombok.ToString;

@Data
@ToString
public class Bo_infoVO {

	private String bo_code,mm_email,ro_code, co_code,wish_code,bo_status,checkin,checkout,enabled
	,ro_max,mm_phone,mm_name,ro_type;
	private Date regdate, updatedate;
}

