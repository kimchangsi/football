package com.yi.domain;

import java.util.Date;

public class MemberVO {
	private String mId;
	private String mName;
	private String mPwd;
	private String mPwd1;
	private String mTel1;
	private String mTel2;
	private String mTel3;
	private Date mJoin;
	private String mImg;
	private String mPosition;
	private TeamVO mTeam;
	private int mMcCount;
	private int mWithdrawal;
	private int mPayPrice;

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmPwd() {
		return mPwd;
	}

	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}

	public String getmPwd1() {
		return mPwd1;
	}

	public void setmPwd1(String mPwd1) {
		this.mPwd1 = mPwd1;
	}

	public String getmTel1() {
		return mTel1;
	}

	public void setmTel1(String mTel1) {
		this.mTel1 = mTel1;
	}

	public String getmTel2() {
		return mTel2;
	}

	public void setmTel2(String mTel2) {
		this.mTel2 = mTel2;
	}

	public String getmTel3() {
		return mTel3;
	}

	public void setmTel3(String mTel3) {
		this.mTel3 = mTel3;
	}

	public Date getmJoin() {
		return mJoin;
	}

	public void setmJoin(Date mJoin) {
		this.mJoin = mJoin;
	}

	public String getmImg() {
		return mImg;
	}

	public void setmImg(String mImg) {
		this.mImg = mImg;
	}

	public String getmPosition() {
		return mPosition;
	}

	public void setmPosition(String mPosition) {
		this.mPosition = mPosition;
	}

	public TeamVO getmTeam() {
		return mTeam;
	}

	public void setmTeam(TeamVO mTeam) {
		this.mTeam = mTeam;
	}

	public int getmMcCount() {
		return mMcCount;
	}

	public void setmMcCount(int mMcCount) {
		this.mMcCount = mMcCount;
	}

	public int getmWithdrawal() {
		return mWithdrawal;
	}

	public void setmWithdrawal(int mWithdrawal) {
		this.mWithdrawal = mWithdrawal;
	}

	public int getmPayPrice() {
		return mPayPrice;
	}

	public void setmPayPrice(int mPayPrice) {
		this.mPayPrice = mPayPrice;
	}

	@Override
	public String toString() {
		return "MemberVO [mId=" + mId + ", mName=" + mName + ", mPwd=" + mPwd + ", mPwd1=" + mPwd1 + ", mTel1=" + mTel1
				+ ", mTel2=" + mTel2 + ", mTel3=" + mTel3 + ", mJoin=" + mJoin + ", mImg=" + mImg + ", mPosition="
				+ mPosition + ", mTeam=" + mTeam + ", mMcCount=" + mMcCount + ", mWithdrawal=" + mWithdrawal
				+ ", mPayPrice=" + mPayPrice + "]";
	}

}
