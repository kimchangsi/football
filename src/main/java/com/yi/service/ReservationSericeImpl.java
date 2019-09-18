package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.GroundVO;
import com.yi.persistence.GroundDao;
@Service
public class ReservationSericeImpl implements ReservationService {
	
	@Autowired
	GroundDao gDao;

	@Override
	public List<GroundVO> selectGroundBygNo(int gno) throws Exception {
		return gDao.selectBygNo(gno);
	}

}
