package com.yi.persistence;

import java.util.List;

import com.yi.domain.Criteria;
import com.yi.domain.MercenaryBoardVO;
import com.yi.domain.SearchCriteria;

public interface MercenaryDao {
	public List<MercenaryBoardVO> selectByall(SearchCriteria cri) throws Exception;
	public List<MercenaryBoardVO> selectByall2() throws Exception;
	public void insertMercenary(MercenaryBoardVO vo) throws Exception;
	public void updateDeadLine(int mcbNo) throws Exception;
	public void updateMercenaryBoard(MercenaryBoardVO vo) throws Exception;
	public void updateApplicationMer() throws Exception;
}
