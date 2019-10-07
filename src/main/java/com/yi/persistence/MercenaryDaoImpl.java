package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.Criteria;
import com.yi.domain.MercenaryBoardVO;
import com.yi.domain.SearchCriteria;
@Repository
public class MercenaryDaoImpl implements MercenaryDao {
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.yi.mappers.mercenaryBoardMapper";
	
	

	@Override
	public List<MercenaryBoardVO> selectByall2() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectByall2");
	}

	@Override
	public void insertMercenary(MercenaryBoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".insertMercenary",vo); 
	} 

	@Override
	public void updateDeadLine(int mcbNo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".updateDeadLine",mcbNo); 

	}

	@Override
	public void updateMercenaryBoard(MercenaryBoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".updateMercenaryBoard",vo);
	}



	@Override
	public List<MercenaryBoardVO> selectByall(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectByall",cri);
	}

	@Override
	public void updateApplicationMer() throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".updateApplicationMer");
	}

	

}
