package com.groupware.board.model;

public class BoardDataDto {

	private int data_sq; /* 자료번호 */
	private String stf_sq; /* 사원번호 */
	private String data_nm; /* 제목 */
	private String data_cnt; /* 내용 */
	private int data_hits; /* 조회수 */
	private String data_dt; /* 등록일 */
	private String data_mod; /* 최종수정일 */
	private String data_crs; /* 파일경로 */
	private String data_pl_nm; /* 파일명 */

	public int getData_sq() {
		return data_sq;
	}

	public void setData_sq(int data_sq) {
		this.data_sq = data_sq;
	}

	public String getStf_sq() {
		return stf_sq;
	}

	public void setStf_sq(String stf_sq) {
		this.stf_sq = stf_sq;
	}

	public String getData_nm() {
		return data_nm;
	}

	public void setData_nm(String data_nm) {
		this.data_nm = data_nm;
	}

	public String getData_cnt() {
		return data_cnt;
	}

	public void setData_cnt(String data_cnt) {
		this.data_cnt = data_cnt;
	}

	public int getData_hits() {
		return data_hits;
	}

	public void setData_hits(int data_hits) {
		this.data_hits = data_hits;
	}

	public String getData_dt() {
		return data_dt;
	}

	public void setData_dt(String data_dt) {
		this.data_dt = data_dt;
	}

	public String getData_mod() {
		return data_mod;
	}

	public void setData_mod(String data_mod) {
		this.data_mod = data_mod;
	}

	public String getData_crs() {
		return data_crs;
	}

	public void setData_crs(String data_crs) {
		this.data_crs = data_crs;
	}

	public String getData_pl_nm() {
		return data_pl_nm;
	}

	public void setData_pl_nm(String data_pl_nm) {
		this.data_pl_nm = data_pl_nm;
	}

}
