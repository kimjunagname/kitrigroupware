package com.groupware.approval.model;

public class ApprovalDto {

	private int apv_sq;  /* 결재번호 */
	private int div_apv_sq;  /* 결재구분번호 */
	private String stf_sq_sq;/* 사원번호 */
	private String stf_mid_sq;  /* 중간승인자 */
	private String stf_fnl_sq; /* 최종승인자 */
	private String apv_ok_sq; /* 결재승인번호 */
	private String apv_nm; /* 제목 */
	private String apv_pl_rt; /* 파일경로 */
	private String apv_pl_nm;  /* 파일명 */
	private String apv_no; /* 반려사유 */
	public int getApv_sq() {
		return apv_sq;
	}
	public void setApv_sq(int apv_sq) {
		this.apv_sq = apv_sq;
	}
	public int getDiv_apv_sq() {
		return div_apv_sq;
	}
	public void setDiv_apv_sq(int div_apv_sq) {
		this.div_apv_sq = div_apv_sq;
	}
	public String getStf_sq_sq() {
		return stf_sq_sq;
	}
	public void setStf_sq_sq(String stf_sq_sq) {
		this.stf_sq_sq = stf_sq_sq;
	}
	public String getStf_mid_sq() {
		return stf_mid_sq;
	}
	public void setStf_mid_sq(String stf_mid_sq) {
		this.stf_mid_sq = stf_mid_sq;
	}
	public String getStf_fnl_sq() {
		return stf_fnl_sq;
	}
	public void setStf_fnl_sq(String stf_fnl_sq) {
		this.stf_fnl_sq = stf_fnl_sq;
	}
	public String getApv_ok_sq() {
		return apv_ok_sq;
	}
	public void setApv_ok_sq(String apv_ok_sq) {
		this.apv_ok_sq = apv_ok_sq;
	}
	public String getApv_nm() {
		return apv_nm;
	}
	public void setApv_nm(String apv_nm) {
		this.apv_nm = apv_nm;
	}
	public String getApv_pl_rt() {
		return apv_pl_rt;
	}
	public void setApv_pl_rt(String apv_pl_rt) {
		this.apv_pl_rt = apv_pl_rt;
	}
	public String getApv_pl_nm() {
		return apv_pl_nm;
	}
	public void setApv_pl_nm(String apv_pl_nm) {
		this.apv_pl_nm = apv_pl_nm;
	}
	public String getApv_no() {
		return apv_no;
	}
	public void setApv_no(String apv_no) {
		this.apv_no = apv_no;
	}
	
	
	
	
}
