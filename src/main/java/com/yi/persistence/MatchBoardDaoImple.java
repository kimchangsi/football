package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.MatchBoardVO;
import com.yi.domain.SearchCriteria;

@Repository
public class MatchBoardDaoImple implements MatchBoardDao {
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.yi.mappers.matchBoardMapper";

	@Override
	public void insertMatch(MatchBoardVO vo) throws Exception {
		sqlSession.insert(namespace + ".insertMatch",vo);
	}

	@Override
	public List<MatchBoardVO> selectByAll(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".selectByAll",cri);
	}

	@Override
	public List<MatchBoardVO> selectByAll2() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".selectByAll2");
	}

	@Override
	public void updateDeadLine(int mbNo) throws Exception {
		sqlSession.update(namespace+".updateDeadLine",mbNo);
		
	}

	@Override
	public void updateMatchBoard(MatchBoardVO vo) throws Exception {
		sqlSession.update(namespace + ".updateMatchBoard",vo);
		
	}

}
