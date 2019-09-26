package com.yi.service;

import com.yi.domain.MemberVO;

public interface MemberService {
	public void insert(MemberVO vo);
	public MemberVO idcheck(int mId) throws Exception;
	public MemberVO selectMember(MemberVO vo);
	public MemberVO selectMemberByIdAndPw(String mId, String mPwd);
}
