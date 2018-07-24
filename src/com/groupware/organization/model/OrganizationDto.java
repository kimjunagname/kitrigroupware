package com.groupware.organization.model;

public class OrganizationDto {

	private int dpt_sq;  /* 부서명 구분번 */
	private String dpt_nm;/* 부서명 */
	
	public int getDpt_sq() {
		return dpt_sq;
	}
	public void setDpt_sq(int dpt_sq) {
		this.dpt_sq = dpt_sq;
	}
	public String getDpt_nm() {
		return dpt_nm;
	}
	public void setDpt_nm(String dpt_nm) {
		this.dpt_nm = dpt_nm;
	}
	
}
