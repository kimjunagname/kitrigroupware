package com.groupware.board.model;

public class NoticboardDto {

	private int rpy_sq; /* 리플번호 */
	private int ntc_sq; /* 게시글번호 */
	private String stf_sq; /* 사원번호 */
	private String rtf_cnt; /* 내용 */
	private String rtf_dt; /* 등록일 */
	private String rpy_mod; /* 최종수정일 */

	public int getRpy_sq() {
		return rpy_sq;
	}

	public void setRpy_sq(int rpy_sq) {
		this.rpy_sq = rpy_sq;
	}

	public int getNtc_sq() {
		return ntc_sq;
	}

	public void setNtc_sq(int ntc_sq) {
		this.ntc_sq = ntc_sq;
	}

	public String getStf_sq() {
		return stf_sq;
	}

	public void setStf_sq(String stf_sq) {
		this.stf_sq = stf_sq;
	}

	public String getRtf_cnt() {
		return rtf_cnt;
	}

	public void setRtf_cnt(String rtf_cnt) {
		this.rtf_cnt = rtf_cnt;
	}

	public String getRtf_dt() {
		return rtf_dt;
	}

	public void setRtf_dt(String rtf_dt) {
		this.rtf_dt = rtf_dt;
	}

	public String getRpy_mod() {
		return rpy_mod;
	}

	public void setRpy_mod(String rpy_mod) {
		this.rpy_mod = rpy_mod;
	}

}
