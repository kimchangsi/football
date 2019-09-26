package com.yi.persistence;

import java.util.HashMap;
import java.util.Map;

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
	public MemberVO idcheck(int mId) throws Exception {
		return sqlSession.selectOne(namespace+".idcheck", mId);
	}	
	public MemberVO selectByID(String mId) {
		return sqlSession.selectOne(namespace + ".selectByID" , mId);
	}

	@Override
	public MemberVO selectMember(MemberVO vo) {
		return sqlSession.selectOne(namespace+".selectMember", vo);
	}

	@Override
	public MemberVO selectMemberByIdAndPw(String mId, String mPwd) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("mId", mId);
		map.put("mPwd", mPwd);
		return sqlSession.selectOne(namespace+".selectMemberByIdAndPw", map);
	}

}
