package com.yi.domain;

import java.util.Date;

public class CustomerVO {
	private int nNo;
	private String nTitle;
	private Date nRegdate;
	private int nReadCount;
	private String nContext;
	private String nImg;

	public CustomerVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getnNo() {
		return nNo;
	}

	public void setnNo(int nNo) {
		this.nNo = nNo;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public Date getnRegdate() {
		return nRegdate;
	}

	public void setnRegdate(Date nRegdate) {
		this.nRegdate = nRegdate;
	}

	public int getnReadCount() {
		return nReadCount;
	}

	public void setnReadCount(int nReadCount) {
		this.nReadCount = nReadCount;
	}

	public String getnContext() {
		return nContext;
	}

	public void setnContext(String nContext) {
		this.nContext = nContext;
	}

	public String getnImg() {
		return nImg;
	}

	public void setnImg(String nImg) {
		this.nImg = nImg;
	}

	@Override
	public String toString() {
		return "CustomerVO [nNo=" + nNo + ", nTitle=" + nTitle + ", nRegdate=" + nRegdate + ", nReadCount=" + nReadCount
				+ ", nContext=" + nContext + ", nImg=" + nImg + "]";
	}

}
