package com.yi.domain;

public class MercenaryDetailVO {
	private int mdNo;
	private int mdMcbNo;
	private String mdId;
	private int mdWithDrwal;

	public int getMdNo() {
		return mdNo;
	}

	public void setMdNo(int mdNo) {
		this.mdNo = mdNo;
	}

	public int getMdMcbNo() {
		return mdMcbNo;
	}

	public void setMdMcbNo(int mdMcbNo) {
		this.mdMcbNo = mdMcbNo;
	}

	public String getMdId() {
		return mdId;
	}

	public void setMdId(String mdId) {
		this.mdId = mdId;
	}

	public int getMdWithDrwal() {
		return mdWithDrwal;
	}

	public void setMdWithDrwal(int mdWithDrwal) {
		this.mdWithDrwal = mdWithDrwal;
	}

	@Override
	public String toString() {
		return String.format("MercenaryDetailVO [mdNo=%s, mdMcbNo=%s, mdId=%s, mdWithDrwal=%s]", mdNo, mdMcbNo, mdId,
				mdWithDrwal);
	}

}
