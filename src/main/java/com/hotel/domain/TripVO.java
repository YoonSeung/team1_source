package com.hotel.domain;

import java.sql.Date;
import java.util.List;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class TripVO {
	private String trip_code, area_code3, trip_name, trip_content, trip_number;
	private Date regdate, updatedate;
	
	private List<PicVO> attachList;

}
