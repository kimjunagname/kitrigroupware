package com.groupware.email.model;

public class EmailReceptionDto {

	private int rcv_eml_sq;  /* 받은편지번 */
	private String stf_snd_sq;  /* 보낸사원번호 */
	private int eml_sq;  /* 편지번호 */
	private int ipt_sq;  /* 중요번호 */
	private String rcv_dt; /* 수신시간 */
	private String stf_sq; /* 사원번호 */
	private int eml_sq2;  /* 편지번호2 */
	public int getRcv_eml_sq() {
		return rcv_eml_sq;
	}
	public void setRcv_eml_sq(int rcv_eml_sq) {
		this.rcv_eml_sq = rcv_eml_sq;
	}
	public String getStf_snd_sq() {
		return stf_snd_sq;
	}
	public void setStf_snd_sq(String stf_snd_sq) {
		this.stf_snd_sq = stf_snd_sq;
	}
	public int getEml_sq() {
		return eml_sq;
	}
	public void setEml_sq(int eml_sq) {
		this.eml_sq = eml_sq;
	}
	public int getIpt_sq() {
		return ipt_sq;
	}
	public void setIpt_sq(int ipt_sq) {
		this.ipt_sq = ipt_sq;
	}
	public String getRcv_dt() {
		return rcv_dt;
	}
	public void setRcv_dt(String rcv_dt) {
		this.rcv_dt = rcv_dt;
	}
	public String getStf_sq() {
		return stf_sq;
	}
	public void setStf_sq(String stf_sq) {
		this.stf_sq = stf_sq;
	}
	public int getEml_sq2() {
		return eml_sq2;
	}
	public void setEml_sq2(int eml_sq2) {
		this.eml_sq2 = eml_sq2;
	}
	
	
	
}
