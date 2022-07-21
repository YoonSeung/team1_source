package com.hotel.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Bo_infoVO {

	private String bo_code,mm_email,co_code,wish_code,bo_status,checkin,checkout,enabled;
	private Date regdate, updatedate;
}
