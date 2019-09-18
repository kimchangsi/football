package com.yi.domain;

import java.util.List;

public class SpotVO {
	private int sNo;
	private String sName;
	private String sAddr;
	private String sTel;
	private String sImg;
	private List<GroundVO> sGsno; 

	

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
	
	

	public List<GroundVO> getsGsno() {
		return sGsno;
	}

	public void setsGsno(List<GroundVO> sGsno) {
		this.sGsno = sGsno;
	}

	@Override
	public String toString() {
		return String.format("Spot [sNo=%s, sName=%s, sAddr=%s, sTel=%s, sImg=%s]", sNo, sName, sAddr, sTel, sImg);
	}

}
