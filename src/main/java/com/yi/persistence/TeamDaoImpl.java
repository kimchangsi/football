package com.yi.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.TeamVO;
@Repository
public class TeamDaoImpl implements TeamDao {
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.yi.mappers.teamMapper";
	
	@Override
	public void insertTeam(TeamVO vo) throws Exception {
		sqlSession.insert(namespace + ".insertTeam" , vo);

	}

}
