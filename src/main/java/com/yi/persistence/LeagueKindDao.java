package com.yi.persistence;

import java.util.List;

import com.yi.domain.LeagueKindVO;

public interface LeagueKindDao {
	public List<LeagueKindVO> selectLeagueKindByAll() throws Exception;
	public void insertLeagueKind(LeagueKindVO vo) throws Exception;
}
