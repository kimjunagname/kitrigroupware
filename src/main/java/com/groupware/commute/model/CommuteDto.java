package com.groupware.commute.model;

public class CommuteDto {
	/* CMT_TB */

	private int cmt_sq; /* 출퇴근번호 */
	private String stf_sq; /* 사원번호 */
	private String cmt_str_tm; /* 출근시간 */
	private String cmt_end_tm; /* 퇴근시간 */
	private String cmt_msg; /* 메시지 */
	private String cmt_dt; /* 날짜 */
	private String scd_nm; /* 상태 */
	private int scd_cnt; /* 남은일정일 */

	public int getCmt_sq() {
		return cmt_sq;
	}

	public void setCmt_sq(int cmt_sq) {
		this.cmt_sq = cmt_sq;
	}

	public String getStf_sq() {
		return stf_sq;
	}

	public void setStf_sq(String stf_sq) {
		this.stf_sq = stf_sq;
	}

	public String getCmt_str_tm() {
		return cmt_str_tm;
	}

	public void setCmt_str_tm(String cmt_str_tm) {
		this.cmt_str_tm = cmt_str_tm;
	}

	public String getCmt_end_tm() {
		return cmt_end_tm;
	}

	public void setCmt_end_tm(String cmt_end_tm) {
		this.cmt_end_tm = cmt_end_tm;
	}

	public String getCmt_msg() {
		return cmt_msg;
	}

	public void setCmt_msg(String cmt_msg) {
		this.cmt_msg = cmt_msg;
	}

	public String getCmt_dt() {
		return cmt_dt;
	}

	public void setCmt_dt(String cmt_dt) {
		this.cmt_dt = cmt_dt;
	}

	public String getScd_nm() {
		return scd_nm;
	}

	public void setScd_nm(String scd_nm) {
		this.scd_nm = scd_nm;
	}

	public int getScd_cnt() {
		return scd_cnt;
	}

	public void setScd_cnt(int scd_cnt) {
		this.scd_cnt = scd_cnt;
	}

	@Override
	public String toString() {
		return "CommuteDto [cmt_str_tm=" + cmt_str_tm + ", cmt_end_tm=" + cmt_end_tm + ", cmt_dt=" + cmt_dt
				+ ", scd_nm=" + scd_nm + ", scd_cnt=" + scd_cnt + "]";
	}

	
	
}
