package com.hotel.mapper;

import java.util.List;

import com.hotel.domain.PicVO;

public interface PicMapper {
	public void insert(PicVO pVO);
	
	public List<PicVO> findByCode(String trip_code);
	
	public List<PicVO> getOldFiles(String trip_code);
	
	public void delete(String uuid);
	
	public void deleteAll(String trip_code);

}
