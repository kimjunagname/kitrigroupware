package com.groupware.member.model;

public class MemberRankDto {
	private int rnk_sq; /* 직급구분번호 */
	private String rnk_nm; /* 직급명 */
	
	public int getRnk_sq() {
		return rnk_sq;
	}
	public void setRnk_sq(int rnk_sq) {
		this.rnk_sq = rnk_sq;
	}
	public String getRnk_nm() {
		return rnk_nm;
	}
	public void setRnk_nm(String rnk_nm) {
		this.rnk_nm = rnk_nm;
	}
}
