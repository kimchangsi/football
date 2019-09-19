package com.yi.persistence;

import com.yi.domain.MemberVO;

public interface MemberDao {
	public void insert(MemberVO vo);
	public MemberVO selectByID(String mId); // 멤버 아이디로 멤버가져오기
}
