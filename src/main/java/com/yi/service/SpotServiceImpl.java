package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.SpotVO;
import com.yi.persistence.SpotDao;
@Service
public class SpotServiceImpl implements SpotService {
	@Autowired
	SpotDao spotDao;
	
	@Override
	public void insert(SpotVO vo) throws Exception {
		spotDao.insert(vo);

	}

	@Override
	public List<SpotVO> selectByAll() throws Exception {
		// TODO Auto-generated method stub
		return spotDao.selectByAll();
	}

}
