package com.yi.domain;

public class SpotVO {
	private int sNo;
	private String sName;
	private String sAddr;
	private String sTel;
	private String sImg;

	public SpotVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SpotVO(int sNo, String sName, String sAddr, String sTel, String sImg) {
		super();
		this.sNo = sNo;
		this.sName = sName;
		this.sAddr = sAddr;
		this.sTel = sTel;
		this.sImg = sImg;
	}

	public SpotVO(String sName, String sAddr, String sTel, String sImg) {
		super();
		this.sName = sName;
		this.sAddr = sAddr;
		this.sTel = sTel;
		this.sImg = sImg;
	}

	public int getsNo() {
		return sNo;
	}

	public void setsNo(int sNo) {
		this.sNo = sNo;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public String getsAddr() {
		return sAddr;
	}

	public void setsAddr(String sAddr) {
		this.sAddr = sAddr;
	}

	public String getsTel() {
		return sTel;
	}

	public void setsTel(String sTel) {
		this.sTel = sTel;
	}

	public String getsImg() {
		return sImg;
	}

	public void setsImg(String sImg) {
		this.sImg = sImg;
	}

	@Override
	public String toString() {
		return String.format("Spot [sNo=%s, sName=%s, sAddr=%s, sTel=%s, sImg=%s]", sNo, sName, sAddr, sTel, sImg);
	}

}
