package com.yi.domain;

import java.util.Date;

public class ReservationVO {
	private int rNo;
	private String rtime;
	private Date rPayTime;
	private MemberVO rMember;
	private int rCancel;
	private GroundVO rGno;
	
	public int getrNo() {
		return rNo;
	}



	public void setrNo(int rNo) {
		this.rNo = rNo;
	}



	public String getRtime() {
		return rtime;
	}



	public void setRtime(String rtime) {
		this.rtime = rtime;
	}



	public Date getrPayTime() {
		return rPayTime;
	}



	public void setrPayTime(Date rPayTime) {
		this.rPayTime = rPayTime;
	}



	public MemberVO getrMember() {
		return rMember;
	}



	public void setrMember(MemberVO rMember) {
		this.rMember = rMember;
	}



	public int getrCancel() {
		return rCancel;
	}



	public void setrCancel(int rCancel) {
		this.rCancel = rCancel;
	}



	public GroundVO getrGno() {
		return rGno;
	}



	public void setrGno(GroundVO rGno) {
		this.rGno = rGno;
	}



	@Override
	public String toString() {
		return String.format("ReservationVO [rNo=%s, rtime=%s, rPayTime=%s, rMember=%s, rCancel=%s, rGno=%s]", rNo,
				rtime, rPayTime, rMember, rCancel, rGno);
	}
	
	
	
}
