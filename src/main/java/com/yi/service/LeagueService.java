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
	public void LeagueAfter(LeagueVO InsertWinVO,LeagueVO updateWinVO,LeagueVO updateLoseVO) throws Exception; //리그 점수 입력후(경기종료 후)
	public List<LeagueVO> selectLeagueByLeagueKind(LeagueKindVO vo) throws Exception;//리그종류별 리그리스트
	public List<LeagueVO> selectLeagueTeam(LeagueKindVO vo) throws Exception;//리그 리스트(리그종류별 팀리스트 )
}
