package com.yi.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.MemberVO;

@Repository
public class MemberDaoImpl implements MemberDao{
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "com.yi.mappers.memberMapper";

	@Override
	public void insert(MemberVO vo) {
		sqlSession.insert(namespace+".insert",vo);
	}

	@Override
	public MemberVO selectByID(String mId) {
		return sqlSession.selectOne(namespace + ".selectByID" , mId);
	}

}
