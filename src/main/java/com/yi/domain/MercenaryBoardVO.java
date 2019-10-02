package com.yi.domain;

import java.util.Date;

public class MercenaryBoardVO {
	private int mcbNo;
	private int mcbRmCnt;
	private Date mcbRegdate;
	private Date mcbEnddate;
	private String mcbContext;
	private int mcbDeadlineWd;
	private MemberVO mcbMember;
	private GroundVO mcbGno;
	private String mcbTime;
	private String mcbLevel;

	public int getMcbNo() {
		return mcbNo;
	}

	public void setMcbNo(int mcbNo) {
		this.mcbNo = mcbNo;
	}

	public int getMcbRmCnt() {
		return mcbRmCnt;
	}

	public void setMcbRmCnt(int mcbRmCnt) {
		this.mcbRmCnt = mcbRmCnt;
	}

	public Date getMcbRegdate() {
		return mcbRegdate;
	}

	public void setMcbRegdate(Date mcbRegdate) {
		this.mcbRegdate = mcbRegdate;
	}

	public Date getMcbEnddate() {
		return mcbEnddate;
	}

	public void setMcbEnddate(Date mcbEnddate) {
		this.mcbEnddate = mcbEnddate;
	}

	public String getMcbContext() {
		return mcbContext;
	}

	public void setMcbContext(String mcbContext) {
		this.mcbContext = mcbContext;
	}

	public int getMcbDeadlineWd() {
		return mcbDeadlineWd;
	}

	public void setMcbDeadlineWd(int mcbDeadlineWd) {
		this.mcbDeadlineWd = mcbDeadlineWd;
	}

	public MemberVO getMcbMember() {
		return mcbMember;
	}

	public void setMcbMember(MemberVO mcbMember) {
		this.mcbMember = mcbMember;
	}

	public GroundVO getMcbGno() {
		return mcbGno;
	}

	public void setMcbGno(GroundVO mcbGno) {
		this.mcbGno = mcbGno;
	}

	public String getMcbTime() {
		return mcbTime;
	}

	public void setMcbTime(String mcbTime) {
		this.mcbTime = mcbTime;
	}

	public String getMcbLevel() {
		return mcbLevel;
	}

	public void setMcbLevel(String mcbLevel) {
		this.mcbLevel = mcbLevel;
	}

	@Override
	public String toString() {
		return String.format(
				"MercenaryBoardVO [mcbNo=%s, mcbRmCnt=%s, mcbRegdate=%s, mcbEnddate=%s, mcbContext=%s, mcbDeadlineWd=%s, mcbMember=%s, mcbGno=%s, mcbTime=%s, mcbLevel=%s]",
				mcbNo, mcbRmCnt, mcbRegdate, mcbEnddate, mcbContext, mcbDeadlineWd, mcbMember, mcbGno, mcbTime,
				mcbLevel);
	}

}
