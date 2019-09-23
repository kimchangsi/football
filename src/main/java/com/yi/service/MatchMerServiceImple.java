package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.GroundVO;
import com.yi.domain.MatchBoardVO;
import com.yi.domain.MemberVO;
import com.yi.domain.SearchCriteria;
import com.yi.domain.SpotVO;
import com.yi.persistence.GroundDao;
import com.yi.persistence.MatchBoardDao;
import com.yi.persistence.MemberDao;
import com.yi.persistence.SpotDao;

@Service
public class MatchMerServiceImple implements MatchMerService {
	@Autowired
	MemberDao mDao;
	@Autowired
	SpotDao sDao;
	@Autowired
	GroundDao gDao;
	@Autowired
	MatchBoardDao mbDao;

	@Override
	public MemberVO selectByID(String mId) {
		return mDao.selectByID(mId);
	}


	@Override
	public List<SpotVO> selectByAll() throws Exception {
		// TODO Auto-generated method stub
		return sDao.selectByAll();
	}


	@Override
	public List<GroundVO> selectBygNo(int gno) throws Exception {
		// TODO Auto-generated method stub
		return gDao.selectBygNo(gno);
	}


	@Override
	public void insertMatch(MatchBoardVO vo) throws Exception {
		mbDao.insertMatch(vo);
	}


	@Override
	public List<MatchBoardVO> selectByAllMatch(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return mbDao.selectByAll(cri);
	}


	@Override
	public List<MatchBoardVO> selectByAllMatch() throws Exception {
		// TODO Auto-generated method stub
		return mbDao.selectByAll2();
	}
	
	

}
