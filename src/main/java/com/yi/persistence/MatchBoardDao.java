package com.yi.persistence;

import java.util.List;

import com.yi.domain.MatchBoardVO;
import com.yi.domain.SearchCriteria;

public interface MatchBoardDao {
	public void insertMatch(MatchBoardVO vo) throws Exception;
	public List<MatchBoardVO> selectByAll(SearchCriteria cri) throws Exception;
	public List<MatchBoardVO> selectByAll2() throws Exception;
	public void updateDeadLine(int mbNo) throws Exception;
	public void updateMatchBoard(MatchBoardVO vo) throws Exception;
}
