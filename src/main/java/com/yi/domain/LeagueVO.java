package com.yi.domain;

public class LeagueVO {
	private int lNo;
	private String lName;
	private String lTel;
	private int lRank;
	private int lOut;
	private int lQuarterfinals;
	private int lSemifianl;
	private int lFinal;
	private String lAway;
	private TeamVO lTeam;
	private LeagueKindVO lLeagueName;
	private int lGoal;
	private int lState;

	public int getlNo() {
		return lNo;
	}

	public void setlNo(int lNo) {
		this.lNo = lNo;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getlTel() {
		return lTel;
	}

	public void setlTel(String lTel) {
		this.lTel = lTel;
	}

	public int getlRank() {
		return lRank;
	}

	public void setlRank(int lRank) {
		this.lRank = lRank;
	}

	public int getlOut() {
		return lOut;
	}

	public void setlOut(int lOut) {
		this.lOut = lOut;
	}

	public int getlQuarterfinals() {
		return lQuarterfinals;
	}

	public void setlQuarterfinals(int lQuarterfinals) {
		this.lQuarterfinals = lQuarterfinals;
	}

	public int getlSemifianl() {
		return lSemifianl;
	}

	public void setlSemifianl(int lSemifianl) {
		this.lSemifianl = lSemifianl;
	}

	public int getlFinal() {
		return lFinal;
	}

	public void setlFinal(int lFinal) {
		this.lFinal = lFinal;
	}

	public String getlAway() {
		return lAway;
	}

	public void setlAway(String lAway) {
		this.lAway = lAway;
	}

	public TeamVO getlTeam() {
		return lTeam;
	}

	public void setlTeam(TeamVO lTeam) {
		this.lTeam = lTeam;
	}

	public LeagueKindVO getlLeagueName() {
		return lLeagueName;
	}

	public void setlLeagueName(LeagueKindVO lLeagueName) {
		this.lLeagueName = lLeagueName;
	}

	public int getlGoal() {
		return lGoal;
	}

	public void setlGoal(int lGoal) {
		this.lGoal = lGoal;
	}

	public int getlState() {
		return lState;
	}

	public void setlState(int lState) {
		this.lState = lState;
	}

	@Override
	public String toString() {
		return String.format(
				"LeagueVO [lNo=%s, lName=%s, lTel=%s, lRank=%s, lOut=%s, lQuarterfinals=%s, lSemifianl=%s, lFinal=%s, lAway=%s, lTeam=%s, lLeagueName=%s, lGoal=%s, lState=%s]",
				lNo, lName, lTel, lRank, lOut, lQuarterfinals, lSemifianl, lFinal, lAway, lTeam, lLeagueName, lGoal,
				lState);
	}

}
