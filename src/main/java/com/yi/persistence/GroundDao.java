package com.yi.persistence;

import java.util.List;

import com.yi.domain.GroundVO;

public interface GroundDao {
	public List<GroundVO> selectBygNo(int gno)throws Exception;
}
