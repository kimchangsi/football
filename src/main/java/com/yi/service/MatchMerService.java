package com.yi.service;

import java.util.List;

import com.yi.domain.GroundVO;
import com.yi.domain.MatchBoardVO;
import com.yi.domain.MemberVO;
import com.yi.domain.SearchCriteria;
import com.yi.domain.SpotVO;

public interface MatchMerService {
	public MemberVO selectByID(String mId); // 멤버 아이디로 멤버가져오기
	public List<SpotVO> selectByAll() throws Exception; //전체지점가져오기
	public List<GroundVO> selectBygNo(int gno)throws Exception;//선택된 지점의 구장리스트 가져오기
	public void insertMatch(MatchBoardVO vo) throws Exception; //매치등록하기
	public List<MatchBoardVO> selectByAllMatch(SearchCriteria cri) throws Exception; //매치 리스트가져오기;
	public List<MatchBoardVO> selectByAllMatch() throws Exception; //매치 리스트가져오기;
	public void updateDeadLine(int mbNo) throws Exception; //마감클릭시 마감으로 변경
}	
