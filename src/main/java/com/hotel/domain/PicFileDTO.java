package com.hotel.domain;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class PicFileDTO {
	private String fileName;
	private String uploadPath;
	private String uuid;
	private boolean image;
}
