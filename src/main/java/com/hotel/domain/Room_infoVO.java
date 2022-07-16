package com.hotel.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Room_infoVO {
	private String co_code,co_title, co_type, ro_code,co_code1,wish_code,ro_name,ro_type,ro_content,ro_max,checkin,checkout,enabled;
	private Date regdate, updatedate;
	private int ro_price;
	
}
