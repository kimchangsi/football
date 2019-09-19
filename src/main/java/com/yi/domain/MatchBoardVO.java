package com.yi.domain;

import java.util.Date;

public class MatchBoardVO {
	private int mbNo;
	private int mbTeamCount;
	private String mbMatchForm;
	private int mbApplication;
	private Date mbRegdate;
	private Date mbEnddate;
	private String mbContext;
	private MemberVO mbMember;
	private GroundVO mbGno;
	private String mbTime;
	private String mbLevel;

	public int getMbNo() {
		return mbNo;
	}

	public void setMbNo(int mbNo) {
		this.mbNo = mbNo;
	}

	public int getMbTeamCount() {
		return mbTeamCount;
	}

	public void setMbTeamCount(int mbTeamCount) {
		this.mbTeamCount = mbTeamCount;
	}

	public String getMbMatchForm() {
		return mbMatchForm;
	}

	public void setMbMatchForm(String mbMatchForm) {
		this.mbMatchForm = mbMatchForm;
	}

	public int getMbApplication() {
		return mbApplication;
	}

	public void setMbApplication(int mbApplication) {
		this.mbApplication = mbApplication;
	}

	public Date getMbRegdate() {
		return mbRegdate;
	}

	public void setMbRegdate(Date mbRegdate) {
		this.mbRegdate = mbRegdate;
	}

	public Date getMbEnddate() {
		return mbEnddate;
	}

	public void setMbEnddate(Date mbEnddate) {
		this.mbEnddate = mbEnddate;
	}

	public String getMbContext() {
		return mbContext;
	}

	public void setMbContext(String mbContext) {
		this.mbContext = mbContext;
	}

	public MemberVO getMbMember() {
		return mbMember;
	}

	public void setMbMember(MemberVO mbMember) {
		this.mbMember = mbMember;
	}

	public GroundVO getMbGno() {
		return mbGno;
	}

	public void setMbGno(GroundVO mbGno) {
		this.mbGno = mbGno;
	}

	public String getMbTime() {
		return mbTime;
	}

	public void setMbTime(String mbTime) {
		this.mbTime = mbTime;
	}

	public String getMbLevel() {
		return mbLevel;
	}

	public void setMbLevel(String mbLevel) {
		this.mbLevel = mbLevel;
	}

	@Override
	public String toString() {
		return String.format(
				"MatchBoardVO [mbNo=%s, mbTeamCount=%s, mbMatchForm=%s, mbApplication=%s, mbRegdate=%s, mbEnddate=%s, mbContext=%s, mbMember=%s, mbGno=%s, mbTime=%s, mbLevel=%s]",
				mbNo, mbTeamCount, mbMatchForm, mbApplication, mbRegdate, mbEnddate, mbContext, mbMember, mbGno, mbTime,
				mbLevel);
	}

}
