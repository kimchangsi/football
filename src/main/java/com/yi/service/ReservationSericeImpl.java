package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.GroundVO;
import com.yi.domain.ReservationVO;
import com.yi.domain.SpotVO;
import com.yi.persistence.GroundDao;
import com.yi.persistence.ReservationDao;
import com.yi.persistence.SpotDao;
@Service
public class ReservationSericeImpl implements ReservationService {
	@Autowired
	ReservationDao rDao;
	@Autowired
	GroundDao gDao;
	@Autowired
	SpotDao sDao;
	

	@Override
	public List<GroundVO> selectGroundBygNo(int gno) throws Exception {
		return gDao.selectBygNo(gno);
	}

	@Override
	public List<ReservationVO> selectByrGnoRtime(int rGno, String rTime) throws Exception {
		return rDao.selectByrGnoRtime(rGno, rTime);
	}

	@Override
	public SpotVO selectBySno(int sNo) throws Exception {
		return sDao.selectBySno(sNo);
	}

	@Override
	public void insertReservation(ReservationVO vo) throws Exception {
		rDao.insertReservation(vo);
		
	}

}
