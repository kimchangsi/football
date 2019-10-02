package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.LeagueKindVO;

@Repository
public class LeagueKindDaoImpl implements LeagueKindDao {
	
	private static final String namespace = "com.yi.mappers.leagueKindMapper";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<LeagueKindVO> selectLeagueKindByAll() throws Exception {
		return sqlSession.selectList(namespace + ".selectLeagueKindByAll");
	}

	@Override
	public void insertLeagueKind(LeagueKindVO vo) throws Exception {
		sqlSession.insert(namespace + ".insertLeagueKind",vo);
	}

}
