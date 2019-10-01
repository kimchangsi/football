package com.yi.domain;

import java.util.Date;

public class LeagueKindVO {
	private String lkName;
	private int lkDeadline;
	private Date lkStart;
	private Date lkEdn;

	public String getLkName() {
		return lkName;
	}

	public void setLkName(String lkName) {
		this.lkName = lkName;
	}

	public int getLkDeadline() {
		return lkDeadline;
	}

	public void setLkDeadline(int lkDeadline) {
		this.lkDeadline = lkDeadline;
	}

	public Date getLkStart() {
		return lkStart;
	}

	public void setLkStart(Date lkStart) {
		this.lkStart = lkStart;
	}

	public Date getLkEdn() {
		return lkEdn;
	}

	public void setLkEdn(Date lkEdn) {
		this.lkEdn = lkEdn;
	}

	@Override
	public String toString() {
		return String.format("LeagueKind [lkName=%s, lkDeadline=%s, lkStart=%s, lkEdn=%s]", lkName, lkDeadline, lkStart,
				lkEdn);
	}

}
