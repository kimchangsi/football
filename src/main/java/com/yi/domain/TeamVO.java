package com.yi.domain;

import java.util.Date;

public class TeamVO {
	private String tName;
	private String tCf;
	private Date tJoin;
	private String tMark;
	private String tLevel;
	private String tCode;

	public String gettName() {
		return tName;
	}

	public void settName(String tName) {
		this.tName = tName;
	}

	public String gettCf() {
		return tCf;
	}

	public void settCf(String tCf) {
		this.tCf = tCf;
	}

	public Date gettJoin() {
		return tJoin;
	}

	public void settJoin(Date tJoin) {
		this.tJoin = tJoin;
	}

	public String gettMark() {
		return tMark;
	}

	public void settMark(String tMark) {
		this.tMark = tMark;
	}

	public String gettLevel() {
		return tLevel;
	}

	public void settLevel(String tLevel) {
		this.tLevel = tLevel;
	}

	public String gettCode() {
		return tCode;
	}

	public void settCode(String tCode) {
		this.tCode = tCode;
	}

	@Override
	public String toString() {
		return "TeamVO [tName=" + tName + ", tCf=" + tCf + ", tJoin=" + tJoin + ", tMark=" + tMark + ", tLevel="
				+ tLevel + ", tCode=" + tCode + "]";
	}

}
