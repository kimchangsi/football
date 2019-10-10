package com.yi.domain;

public class RankMerVO {
	private String rmId;
	private String rmName;
	private int rmCount;
	private String rmImg;
	public String getRmId() {
		return rmId;
	}
	public void setRmId(String rmId) {
		this.rmId = rmId;
	}
	public String getRmName() {
		return rmName;
	}
	public void setRmName(String rmName) {
		this.rmName = rmName;
	}
	public int getRmCount() {
		return rmCount;
	}
	public void setRmCount(int rmCount) {
		this.rmCount = rmCount;
	}
	public String getRmImg() {
		return rmImg;
	}
	public void setRmImg(String rmImg) {
		this.rmImg = rmImg;
	}
	@Override
	public String toString() {
		return String.format("RankMerVO [rmId=%s, rmName=%s, rmCount=%s, rmImg=%s]", rmId, rmName, rmCount, rmImg);
	}
	
	
}
