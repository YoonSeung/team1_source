package com.hotel.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Pay_info {

	private String pay_code, bo_code, ro_code, mm_email, wish_code, pay_date, pay_way, enabled;
	private int pay_price;
	private Date regdate, updatedate;
}
