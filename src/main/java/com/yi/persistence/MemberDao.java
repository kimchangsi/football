package com.yi.persistence;

import com.yi.domain.MemberVO;

public interface MemberDao {
	public void insert(MemberVO vo);
	public MemberVO idcheck(int mId) throws Exception;
}
