package com.yi.service;

import java.util.List;

import com.yi.domain.GroundVO;
import com.yi.domain.ReservationVO;
import com.yi.domain.SpotVO;

public interface ReservationService {
	public List<GroundVO> selectGroundBygNo(int gno)throws Exception;
	public List<ReservationVO> selectByrGnoRtime(int rGno,String rTime)throws Exception;
	public SpotVO selectBySno(int sNo) throws Exception;
	public void insertReservation(ReservationVO vo) throws Exception;
	public List<ReservationVO> selecyByID(String mId) throws Exception;
}
