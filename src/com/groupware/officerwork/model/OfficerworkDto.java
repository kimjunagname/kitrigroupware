package com.groupware.officerwork.model;

public class OfficerworkDto {
		
	private int smt_sq;  /* 출퇴근번호 */
	private String stf_sq;  /* 사원번호 */
	private String stf_srt_tm; /* 출근시간 */
	private String stf_end_tm; /* 퇴근시 */
	public int getSmt_sq() {
		return smt_sq;
	}
	public void setSmt_sq(int smt_sq) {
		this.smt_sq = smt_sq;
	}
	public String getStf_sq() {
		return stf_sq;
	}
	public void setStf_sq(String stf_sq) {
		this.stf_sq = stf_sq;
	}
	public String getStf_srt_tm() {
		return stf_srt_tm;
	}
	public void setStf_srt_tm(String stf_srt_tm) {
		this.stf_srt_tm = stf_srt_tm;
	}
	public String getStf_end_tm() {
		return stf_end_tm;
	}
	public void setStf_end_tm(String stf_end_tm) {
		this.stf_end_tm = stf_end_tm;
	}
	
	
	
}
