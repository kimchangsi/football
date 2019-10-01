package com.yi.persistence;

import java.util.List;

import com.yi.domain.LeagueVO;

public interface LeagueDao {
	public void insertLeague(LeagueVO vo) throws Exception;
	public List<LeagueVO> selectLeagueByRandom() throws Exception;
}
