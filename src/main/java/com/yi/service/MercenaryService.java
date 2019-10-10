package com.yi.service;

import java.util.List;

import com.yi.domain.GroundVO;
import com.yi.domain.MemberVO;
import com.yi.domain.MercenaryBoardVO;
import com.yi.domain.MercenaryDetailVO;
import com.yi.domain.RankMerVO;
import com.yi.domain.SearchCriteria;
import com.yi.domain.SpotVO;

public interface MercenaryService {
	public List<MercenaryBoardVO> selectByall(SearchCriteria cri) throws Exception;
	public List<MercenaryBoardVO> selectByall2() throws Exception;
	public void insertMercenary(MercenaryBoardVO vo) throws Exception;
	public void updateDeadLine(int mcbNo) throws Exception;
	public void updateMercenaryBoard(MercenaryBoardVO vo) throws Exception;
	
	
	public MemberVO selectByID(String mId); // 멤버 아이디로 멤버가져오기
	public List<SpotVO> selectByAll() throws Exception; //전체지점가져오기
	public List<GroundVO> selectBygNo(int gno)throws Exception;//선택된 지점의 구장리스트 가져오기
	public void updateApplicationMer() throws Exception;
	
	
	public void insertMD(MercenaryDetailVO vo) throws Exception;
	public void deleteMD(MercenaryDetailVO vo) throws Exception;
	public void updateMD(MercenaryDetailVO vo) throws Exception;
	public List<MercenaryDetailVO> selectMDByIDNO(MercenaryDetailVO vo) throws Exception;
	public List<MercenaryDetailVO> selectMDByID(MercenaryDetailVO vo) throws Exception;
	public List<MercenaryDetailVO> selectMDByAll() throws Exception;
	public List<MercenaryDetailVO> selectMDByNo(MercenaryDetailVO vo) throws Exception;
	public List<RankMerVO> selectByAllRank() throws Exception;
}
