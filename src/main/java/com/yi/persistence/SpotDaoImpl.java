package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.SpotVO;

@Repository
public class SpotDaoImpl implements SpotDao {

	@Autowired
	private SqlSession sqlSession;

	private static final String namespace = "com.yi.mappers.spotMapper";

	@Override
	public void insert(SpotVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	@Override
	public List<SpotVO> selectByAll() throws Exception {
		return sqlSession.selectList(namespace + ".selectByAll");
	}

	@Override
	public SpotVO selectBySno(int sNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".selectBySno",sNo);
	}

}
