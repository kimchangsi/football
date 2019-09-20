package com.yi.persistence;

import java.util.List;

import com.yi.domain.SpotVO;

public interface SpotDao {
	public void insert(SpotVO vo) throws Exception;
	public List<SpotVO> selectByAll() throws Exception;
	public SpotVO selectBySno(int sNo) throws Exception;
}
