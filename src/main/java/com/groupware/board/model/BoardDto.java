package com.groupware.board.model;

public class BoardDto {
	private int ntc_sq; /* 게시글번호 */
	private String stf_sq; /* 사원번호 */
	private int ntc_div_sq; /* 게시판구분 */
	private String ntc_nm; /* 제목 */
	private String ntc_cnt; /* 내용 */
	private String ntc_dt; /* 등록날 */
	private int ntc_hits; /* 조회수 */
	private int ntc_div_sq2; /* 게시판구 */

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

	public int getNtc_div_sq() {
		return ntc_div_sq;
	}

	public void setNtc_div_sq(int ntc_div_sq) {
		this.ntc_div_sq = ntc_div_sq;
	}

	public String getNtc_nm() {
		return ntc_nm;
	}

	public void setNtc_nm(String ntc_nm) {
		this.ntc_nm = ntc_nm;
	}

	public String getNtc_cnt() {
		return ntc_cnt;
	}

	public void setNtc_cnt(String ntc_cnt) {
		this.ntc_cnt = ntc_cnt;
	}

	public String getNtc_dt() {
		return ntc_dt;
	}

	public void setNtc_dt(String ntc_dt) {
		this.ntc_dt = ntc_dt;
	}

	public int getNtc_hits() {
		return ntc_hits;
	}

	public void setNtc_hits(int ntc_hits) {
		this.ntc_hits = ntc_hits;
	}

	public int getNtc_div_sq2() {
		return ntc_div_sq2;
	}

	public void setNtc_div_sq2(int ntc_div_sq2) {
		this.ntc_div_sq2 = ntc_div_sq2;
	}

}
