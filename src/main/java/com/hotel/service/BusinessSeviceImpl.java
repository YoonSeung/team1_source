package com.hotel.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hotel.domain.BusinessAttachVO;
import com.hotel.domain.BusinessVO;
import com.hotel.mapper.BusinessAttachMapper;
import com.hotel.mapper.BusinessMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Service
@Log4j
@AllArgsConstructor
public class BusinessSeviceImpl implements BusinessService {
	private BusinessMapper mapper;
	private BusinessAttachMapper attachMapper;

	@Override
	public List<BusinessVO> getList() {
		// TODO Auto-generated method stub
		log.info("hotellist");

		return mapper.selectAllHotel();
	}

	@Override
	@Transactional
	public void register(BusinessVO business) {
		log.info("register..."+business);

		mapper.insertHotel(business);

		if(business.getAttachList() == null || business.getAttachList().size()<0) {
			return;
		}

		business.getAttachList().forEach(attach -> {
			attach.setEnabled(business.getEnabled());

			attachMapper.insert(attach);
		});
	}


	@Override
	public List<BusinessAttachVO> getAttachList(Long co_code){
		log.info("get attach list by code");

		return attachMapper.findByCode(co_code);
	}

	@Override
	public BusinessVO getHotel(Long co_code) {
		log.info("hotel info..."+co_code);

		return mapper.selectProductByCode(co_code);
	}

	@Override
	@Transactional
	public boolean modify(BusinessVO vo) {
		log.info("modify....."+vo);

		boolean modifyResult = mapper.updateProduct(vo) == 1;

		if(vo.getAttachList() != null) {
			attachMapper.deleteAll(vo.getCo_code());
			if(modifyResult && vo.getAttachList().size()>0) {
				vo.getAttachList().forEach(attach -> {
					attach.setCo_code(vo.getCo_code());
					attachMapper.insert(attach);
				});
			}
		}

		return modifyResult;
	}

	@Override
	@Transactional
	public boolean remove(Long co_code) {
		log.info("delete movie..."+co_code);

		attachMapper.deleteAll(co_code);

		return mapper.deleteHotel(co_code) == 1;
	}



}