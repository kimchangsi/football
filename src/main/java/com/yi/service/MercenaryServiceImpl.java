package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.GroundVO;
import com.yi.domain.MemberVO;
import com.yi.domain.MercenaryBoardVO;
import com.yi.domain.MercenaryDetailVO;
import com.yi.domain.RankMerVO;
import com.yi.domain.SearchCriteria;
import com.yi.domain.SpotVO;
import com.yi.persistence.GroundDao;
import com.yi.persistence.MemberDao;
import com.yi.persistence.MercenaryDao;
import com.yi.persistence.MercenaryDetailDao;
import com.yi.persistence.RankMerDao;
import com.yi.persistence.SpotDao;

@Service
public class MercenaryServiceImpl implements MercenaryService {
	@Autowired
	MemberDao mDao;
	@Autowired
	SpotDao sDao;
	@Autowired
	GroundDao gDao;
	@Autowired
	MercenaryDao mcDao;
	@Autowired
	MercenaryDetailDao mdDao;
	@Autowired
	RankMerDao rmDao;
	

	@Override
	public List<MercenaryBoardVO> selectByall(SearchCriteria cri) throws Exception {
		return mcDao.selectByall(cri);
	}

	@Override
	public List<MercenaryBoardVO> selectByall2() throws Exception {
		return mcDao.selectByall2();
	}

	@Override
	public void insertMercenary(MercenaryBoardVO vo) throws Exception {
		mcDao.insertMercenary(vo);
	}

	@Override
	public void updateDeadLine(int mcbNo) throws Exception {
		mcDao.updateDeadLine(mcbNo);
	}

	@Override
	public void updateMercenaryBoard(MercenaryBoardVO vo) throws Exception {
		mcDao.updateMercenaryBoard(vo);
	}

	@Override
	public MemberVO selectByID(String mId) {
		return mDao.selectByID(mId);
	}

	@Override
	public List<SpotVO> selectByAll() throws Exception {
		return sDao.selectByAll();
	}

	@Override
	public List<GroundVO> selectBygNo(int gno) throws Exception {

		return gDao.selectBygNo(gno);
	}

	@Override
	public void updateApplicationMer() throws Exception {
		// TODO Auto-generated method stub
		mcDao.updateApplicationMer();
	}

	@Override
	public void insertMD(MercenaryDetailVO vo) throws Exception {
		// TODO Auto-generated method stub
		mdDao.insertMD(vo);
	}

	@Override
	public void deleteMD(MercenaryDetailVO vo) throws Exception {
		// TODO Auto-generated method stub
		mdDao.deleteMD(vo);
	}

	@Override
	public void updateMD(MercenaryDetailVO vo) throws Exception {
		// TODO Auto-generated method stub
		mdDao.updateMD(vo);
	}

	@Override
	public List<MercenaryDetailVO> selectMDByIDNO(MercenaryDetailVO vo) throws Exception {
		// TODO Auto-generated method stub
		return mdDao.selectMDByIDNO(vo);
	}

	@Override
	public List<MercenaryDetailVO> selectMDByID(MercenaryDetailVO vo) throws Exception {
		// TODO Auto-generated method stub
		return mdDao.selectMDByID(vo);
	}

	@Override
	public List<MercenaryDetailVO> selectMDByAll() throws Exception {
		// TODO Auto-generated method stub
		return mdDao.selectMDByAll();
	}

	@Override
	public List<MercenaryDetailVO> selectMDByNo(MercenaryDetailVO vo) throws Exception {
		// TODO Auto-generated method stub
		return mdDao.selectMDByNo(vo);
	}

	@Override
	public List<RankMerVO> selectByAllRank() throws Exception {
		// TODO Auto-generated method stub
		return rmDao.selectByAll();
	}

}
