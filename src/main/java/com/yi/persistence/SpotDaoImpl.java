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

	private static final String namespace = "com.yi.mapper.spotMapper";

	@Override
	public void insert(SpotVO vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	@Override
	public List<SpotVO> selectByAll() throws Exception {
		return sqlSession.selectList(namespace + ".selectByAll");
	}

}
