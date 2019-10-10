package com.yi.persistence;

import java.util.List;

import com.yi.domain.ReservationVO;

public interface ReservationDao {
	
	public List<ReservationVO> selectByrGnoRtime(int rGno,String rTime) throws Exception;
	public void insertReservation(ReservationVO vo) throws Exception;
	public List<ReservationVO> selecyByID(String mId) throws Exception;
}
