package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.GroundVO;

@Repository
public class GroundDaoImple implements GroundDao {
	
	@Autowired
	private SqlSession sqlSession;

	private static final String namespace = "com.yi.mapper.groundMapper";
	
	@Override
	public List<GroundVO> selectBygNo(int gno) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectBygNo",gno);
	}

}
