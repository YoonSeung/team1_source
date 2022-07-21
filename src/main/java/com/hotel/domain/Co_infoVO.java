package com.hotel.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Co_infoVO {
	String co_code,co_title,co_type,co_name,co_number,approval,enabled,area_code3,
	ro_price,ro_max,ro_type,ro_content;
int reg_num;
Date regdate,updatedate;
	
}
