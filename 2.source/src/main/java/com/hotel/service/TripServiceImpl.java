package com.hotel.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hotel.domain.PicVO;
import com.hotel.domain.TripVO;
import com.hotel.mapper.PicMapper;
import com.hotel.mapper.TripMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class TripServiceImpl implements TripService{
	private TripMapper tripMapper;
	private PicMapper picMapper;

	@Override
	public List<TripVO> getList() {
		// TODO Auto-generated method stub
		log.info("triplist");
		
		return tripMapper.selectAllTrip();
	}
	
	@Override
	@Transactional
	public void register(TripVO tVO) {
		// TODO Auto-generated method stub
		log.info("register..."+tVO);
		
		tripMapper.insertTrip(tVO);
		
		if(tVO.getAttachList() == null || tVO.getAttachList().size()<=0) {
			return;
		}
		
		tVO.getAttachList().forEach(attach -> {
			attach.setTrip_code(tVO.getTrip_code());		
			
			picMapper.insert(attach);
		});
		
	}

	@Override
	public TripVO getTrip(String trip_code) {
		// TODO Auto-generated method stub
		log.info("trip info..."+trip_code);
		
		return tripMapper.selectProductByCode(trip_code);
	}

	@Override
	public List<PicVO> getAttachList(String trip_code) {
		// TODO Auto-generated method stub
		log.info("get attach list by trip_code");
		
		return picMapper.findByCode(trip_code);
	}

	@Override
	@Transactional
	public boolean modify(TripVO tVO) {
		// TODO Auto-generated method stub
		log.info("modify....."+tVO);
		
		boolean modifyResult = tripMapper.updateProduct(tVO) == 1;
		
		if(tVO.getAttachList() != null) {
			picMapper.deleteAll(tVO.getTrip_code());
			if(modifyResult && tVO.getAttachList().size()>0) {
				tVO.getAttachList().forEach(attach -> {
					attach.setTrip_code(tVO.getTrip_code());
					picMapper.insert(attach);
				});
			}
		}
		
		return modifyResult;
	}

	@Override
	@Transactional
	public boolean remove(String trip_code) {
		// TODO Auto-generated method stub
		log.info("delete..."+trip_code);
		
		picMapper.deleteAll(trip_code);
		
		return tripMapper.deleteTrip(trip_code) == 1;
	}
}
