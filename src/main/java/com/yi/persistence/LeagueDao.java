package com.yi.persistence;

import java.util.List;

import com.yi.domain.LeagueKindVO;
import com.yi.domain.LeagueVO;

public interface LeagueDao {
	public void insertLeague(LeagueVO vo) throws Exception;
	public List<LeagueVO> selectLeagueByRandom() throws Exception;
	public List<LeagueVO> selectLeagueByAll() throws Exception;
	public List<LeagueVO> selectLeagueByLeagueKind(LeagueKindVO vo) throws Exception;
	public void insertLeagueAfer(LeagueVO vo) throws Exception;
	
	public void updateLeagueQuarterfinals(LeagueVO vo) throws Exception;
	public void updateLeagueSemifianl(LeagueVO vo) throws Exception;
	public List<LeagueVO> selectLeagueTeam(LeagueKindVO vo) throws Exception;
}
