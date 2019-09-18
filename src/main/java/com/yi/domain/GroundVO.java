package com.yi.domain;

public class GroundVO {
	private int gNo;
	private String gName;
	private int gPrice;
	private String gTime;
	private SpotVO gSno;

	public int getgNo() {
		return gNo;
	}

	public void setgNo(int gNo) {
		this.gNo = gNo;
	}

	public String getgName() {
		return gName;
	}

	public void setgName(String gName) {
		this.gName = gName;
	}

	public int getgPrice() {
		return gPrice;
	}

	public void setgPrice(int gPrice) {
		this.gPrice = gPrice;
	}

	public String getgTime() {
		return gTime;
	}

	public void setgTime(String gTime) {
		this.gTime = gTime;
	}

	public SpotVO getgSno() {
		return gSno;
	}

	public void setgSno(SpotVO gSno) {
		this.gSno = gSno;
	}

	@Override
	public String toString() {
		return String.format("GroundVO [gNo=%s, gName=%s, gPrice=%s, gTime=%s, gSno=%s]", gNo, gName, gPrice, gTime,
				gSno);
	}

}
