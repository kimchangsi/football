package com.yi.service;

import java.util.List;

import com.yi.domain.GroundVO;

public interface ReservationService {
	public List<GroundVO> selectGroundBygNo(int gno)throws Exception;
}
