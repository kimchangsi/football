package com.yi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.MemberVO;
import com.yi.persistence.MemberDao;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDao dao;
	
	@Override
	public void insert(MemberVO vo) {
		dao.insert(vo);
	}

	@Override
	public MemberVO idcheck(int mId) throws Exception {
		return dao.idcheck(mId);
	}

	@Override
	public MemberVO selectMember(MemberVO vo) {
		return dao.selectMember(vo);
	}

	@Override
	public MemberVO selectMemberByIdAndPw(String mId, String mPwd) {
		return dao.selectMemberByIdAndPw(mId, mPwd);
	}

	
}
