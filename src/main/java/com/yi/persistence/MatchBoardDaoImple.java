package com.yi.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.MatchBoardVO;

@Repository
public class MatchBoardDaoImple implements MatchBoardDao {
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.yi.mappers.matchBoardMapper";

	@Override
	public void insertMatch(MatchBoardVO vo) throws Exception {
		sqlSession.insert(namespace + ".insertMatch",vo);
	}

}
