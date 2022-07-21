package com.hotel.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class PaymentVO {
	private String pay_code;
	private String bo_code;
	private String ro_code;
	private String mm_email;
	private String wish_code;
	private int pay_price;
	private String pay_date;
	private String pay_way;
	private Date regdate;
	private Date updatedate;
	private String enabled;
}
