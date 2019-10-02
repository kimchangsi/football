package com.yi.service;

import java.util.List;

import com.yi.domain.LeagueKindVO;
import com.yi.domain.LeagueVO;

public interface LeagueService {
	public List<LeagueKindVO> selectLeagueKindByAll() throws Exception;
	public void insertLeagueKind(LeagueKindVO vo) throws Exception; //리그종류 추가
	public void insertLeague(LeagueVO vo) throws Exception; // 리그접수 / 팀등록
	public List<LeagueVO> selectLeagueByRandom() throws Exception; // 리그 리스트 
	public List<LeagueVO> selectLeagueByAll() throws Exception; //ㄹㅣ그 리스트
}
