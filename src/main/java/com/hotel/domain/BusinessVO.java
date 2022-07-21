package com.hotel.domain;

import java.util.Date;
import java.util.List;



import lombok.Data;

@Data
public class BusinessVO {
	private String area_code3;
	private String co_title;
	private String co_type;
	private String co_name;
	private String co_number;
	private String approval;
	private String enabled;
	private String ro_price;
	private String ro_type;
	private String ro_content;
	private String ro_max;
	private int reg_num;
	private Date regdate;
	private Date update;
	private Long co_code;
	private List<BusinessAttachVO> attachList;
}