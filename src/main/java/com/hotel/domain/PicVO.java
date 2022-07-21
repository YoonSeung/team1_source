package com.hotel.domain;

import java.sql.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class PicVO {
	private String uuid;
	private String trip_code;
	private String ro_code;
	private String wish_code;
	private String uploadPath;
	private String fileName;
	private Date regdate;
	private String enabled;
}
