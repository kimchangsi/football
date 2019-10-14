package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.LeagueKindVO;
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


	@Override
	public List<LeagueVO> selectLeagueByAll() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectLeagueByAll");
	}



	@Override
	public void insertLeagueAfer(LeagueVO vo) throws Exception {
		sqlSession.insert(namespace + ".insertLeagueAfer",vo);
		
	}


	@Override
	public void updateLeagueQuarterfinals(LeagueVO vo) throws Exception {
		sqlSession.update(namespace + ".updateLeagueQuarterfinals",vo);
		
	}


	@Override
	public void updateLeagueSemifianl(LeagueVO vo) throws Exception {
		sqlSession.update(namespace + ".updateLeagueSemifianl",vo);
		
	}


	@Override
	public List<LeagueVO> selectLeagueByLeagueKind(LeagueKindVO vo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectLeagueByLeagueKind",vo);
	}


	@Override
	public List<LeagueVO> selectLeagueTeam(LeagueKindVO vo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectLeagueTeam",vo);
	}

}
