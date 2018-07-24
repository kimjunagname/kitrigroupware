package com.groupware.email.model;

public class EmailKeepDto {

	private int eml_sq; /* 편지번호 */
	private String eml_nm;  /* 제목 */
	private String eml_cnt;  /* 내용 */
	private String eml_pl_nm;  /* 파일명 */
	private String eml_pl_crs;/* 파일경로 */
	public int getEml_sq() {
		return eml_sq;
	}
	public void setEml_sq(int eml_sq) {
		this.eml_sq = eml_sq;
	}
	public String getEml_nm() {
		return eml_nm;
	}
	public void setEml_nm(String eml_nm) {
		this.eml_nm = eml_nm;
	}
	public String getEml_cnt() {
		return eml_cnt;
	}
	public void setEml_cnt(String eml_cnt) {
		this.eml_cnt = eml_cnt;
	}
	public String getEml_pl_nm() {
		return eml_pl_nm;
	}
	public void setEml_pl_nm(String eml_pl_nm) {
		this.eml_pl_nm = eml_pl_nm;
	}
	public String getEml_pl_crs() {
		return eml_pl_crs;
	}
	public void setEml_pl_crs(String eml_pl_crs) {
		this.eml_pl_crs = eml_pl_crs;
	}

	
	
}
