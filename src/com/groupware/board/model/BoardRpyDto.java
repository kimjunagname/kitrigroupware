package com.groupware.board.model;

public class BoardRpyDto {

	private int dt_rpy_sq; /* 리플번호 */
	private String stf_sq; /* 사원번호 */
	private int data_sq;/* 자료번호 */
	private String dt_rpy_cnt; /* 내용 */
	private String dt_rpy_dt; /* 작성일 */
	private String dt_rpy_mod; /* 최종수정일 */

	public int getDt_rpy_sq() {
		return dt_rpy_sq;
	}

	public void setDt_rpy_sq(int dt_rpy_sq) {
		this.dt_rpy_sq = dt_rpy_sq;
	}

	public String getStf_sq() {
		return stf_sq;
	}

	public void setStf_sq(String stf_sq) {
		this.stf_sq = stf_sq;
	}

	public int getData_sq() {
		return data_sq;
	}

	public void setData_sq(int data_sq) {
		this.data_sq = data_sq;
	}

	public String getDt_rpy_cnt() {
		return dt_rpy_cnt;
	}

	public void setDt_rpy_cnt(String dt_rpy_cnt) {
		this.dt_rpy_cnt = dt_rpy_cnt;
	}

	public String getDt_rpy_dt() {
		return dt_rpy_dt;
	}

	public void setDt_rpy_dt(String dt_rpy_dt) {
		this.dt_rpy_dt = dt_rpy_dt;
	}

	public String getDt_rpy_mod() {
		return dt_rpy_mod;
	}

	public void setDt_rpy_mod(String dt_rpy_mod) {
		this.dt_rpy_mod = dt_rpy_mod;
	}

}
