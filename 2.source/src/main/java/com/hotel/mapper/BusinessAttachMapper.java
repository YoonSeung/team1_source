package com.hotel.mapper;

import java.util.List;

import com.hotel.domain.BusinessAttachVO;



public interface BusinessAttachMapper {
	public void insert(BusinessAttachVO picture);

	public List<BusinessAttachVO> findByCode(Long co_code);

	public List<BusinessAttachVO> getOldFiles(Long co_code);

	public void deleteFile(Long uuid);

	public void deleteAll(Long co_code);
	}