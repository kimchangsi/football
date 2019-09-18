package com.yi.service;

import java.util.List;

import com.yi.domain.SpotVO;

public interface SpotService {
	public void insert(SpotVO vo) throws Exception;
	public List<SpotVO> selectByAll() throws Exception;
}
