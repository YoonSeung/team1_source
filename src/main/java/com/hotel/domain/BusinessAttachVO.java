package com.hotel.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BusinessAttachVO {
	private String uuid;
	private String uploadPath;
	private String fileName;
	private String enabled;
	private Date regdate;
	private Date updatedate;
	private boolean fileType;
	private Long co_code;
	
	
}
