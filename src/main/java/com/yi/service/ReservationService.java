package com.yi.service;

import java.util.List;

import com.yi.domain.GroundVO;
import com.yi.domain.ReservationVO;

public interface ReservationService {
	public List<GroundVO> selectGroundBygNo(int gno)throws Exception;
	public List<ReservationVO> selectByrGnoRtime(int rGno,String rTime)throws Exception;
}
