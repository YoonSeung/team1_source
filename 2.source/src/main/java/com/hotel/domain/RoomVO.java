package com.hotel.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class RoomVO {
	private String ro_code;
	private Long co_code;
	private String wish_code;
	private String ro_name;
	private String ro_type;
	private String ro_content;
	private String ro_max;
	private String checkin;
	private String checkout;
	private String enabled;
	private int ro_price;
	private Date regdate;
	private Date updatedate;
}