package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.RankMerVO;

@Repository
public class RankMerDaoImpl implements RankMerDao {
	@Autowired
	private SqlSession sqlSession;

	private static final String namespace = "com.yi.mappers.rankMerMapper";

	@Override
	public List<RankMerVO> selectByAll() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectByAll");
	}

}
