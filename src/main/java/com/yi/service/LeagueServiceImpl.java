package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yi.domain.LeagueKindVO;
import com.yi.domain.LeagueVO;
import com.yi.persistence.LeagueDao;
import com.yi.persistence.LeagueKindDao;
import com.yi.persistence.TeamDao;
@Service
public class LeagueServiceImpl implements LeagueService{
	@Autowired
	LeagueKindDao lkDao;
	@Autowired
	LeagueDao lDao;
	@Autowired
	TeamDao tDao;
	
	@Override
	public List<LeagueKindVO> selectLeagueKindByAll() throws Exception {
		// TODO Auto-generated method stub
		return lkDao.selectLeagueKindByAll();
	}

	@Override
	public void insertLeagueKind(LeagueKindVO vo) throws Exception {
		// TODO Auto-generated method stub
		lkDao.insertLeagueKind(vo);
	}
	
	@Transactional
	@Override
	public void insertLeague(LeagueVO vo) throws Exception {
		tDao.insertTeam(vo.getlTeam());
		lDao.insertLeague(vo);
	}

	@Override
	public List<LeagueVO> selectLeagueByRandom() throws Exception {
		return lDao.selectLeagueByRandom();
	}

}
