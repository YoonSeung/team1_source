package com.hotel.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class BookingVO {
	private String bo_code;
	private String mm_email;
	private String ro_code;
	private String wish_code;
	private String bo_status;
	private String checkin;
	private String checkout;
	private Date regdate;
	private Date updatedate;
	private String enabled;
	
	private PaymentVO payment;
}
