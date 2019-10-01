package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.LeagueVO;
@Repository
public class LeagueDaoImpl implements LeagueDao {
	@Autowired
	SqlSession sqlSession;
	
	private static final String namespace = "com.yi.mappers.leagueMapper";
	
	
	@Override
	public void insertLeague(LeagueVO vo) throws Exception {
		sqlSession.insert(namespace + ".insertLeague",vo);

	}


	@Override
	public List<LeagueVO> selectLeagueByRandom() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectLeagueByRandom");
	}

}
