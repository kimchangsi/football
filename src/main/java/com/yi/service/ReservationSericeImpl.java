package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.GroundVO;
import com.yi.domain.ReservationVO;
import com.yi.persistence.GroundDao;
import com.yi.persistence.ReservationDao;
@Service
public class ReservationSericeImpl implements ReservationService {
	@Autowired
	ReservationDao rDao;
	@Autowired
	GroundDao gDao;
	
	

	@Override
	public List<GroundVO> selectGroundBygNo(int gno) throws Exception {
		return gDao.selectBygNo(gno);
	}

	@Override
	public List<ReservationVO> selectByrGnoRtime(int rGno, String rTime) throws Exception {
		return rDao.selectByrGnoRtime(rGno, rTime);
	}

}
