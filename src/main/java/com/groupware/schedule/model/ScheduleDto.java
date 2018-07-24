package com.groupware.schedule.model;

public class ScheduleDto extends ScheduleDivisionDto{

	    private int bs_scd_sq;  /* 사내일정번호 */
		private int scd_sq;  /* 일정구분번호 */
		private String stf_sq;  /* 사원번호 */
		private String bs_bs_nm;  /* 제목 */
		private String bs_bs_scd_cnt;  /* 내용 */
		private String bs_scd_str_dt;  /* 시작일 */
		private String bs_scd_end_dt;  /* 종료일 */
		private int scd_sq2; /* 일정구분번 */
		
		
		public int getBs_scd_sq() {
			return bs_scd_sq;
		}
		public void setBs_scd_sq(int bs_scd_sq) {
			this.bs_scd_sq = bs_scd_sq;
		}
		public int getScd_sq() {
			return scd_sq;
		}
		public void setScd_sq(int scd_sq) {
			this.scd_sq = scd_sq;
		}
		public String getStf_sq() {
			return stf_sq;
		}
		public void setStf_sq(String stf_sq) {
			this.stf_sq = stf_sq;
		}
		public String getBs_bs_nm() {
			return bs_bs_nm;
		}
		public void setBs_bs_nm(String bs_bs_nm) {
			this.bs_bs_nm = bs_bs_nm;
		}
		public String getBs_bs_scd_cnt() {
			return bs_bs_scd_cnt;
		}
		public void setBs_bs_scd_cnt(String bs_bs_scd_cnt) {
			this.bs_bs_scd_cnt = bs_bs_scd_cnt;
		}
		public String getBs_scd_str_dt() {
			return bs_scd_str_dt;
		}
		public void setBs_scd_str_dt(String bs_scd_str_dt) {
			this.bs_scd_str_dt = bs_scd_str_dt;
		}
		public String getBs_scd_end_dt() {
			return bs_scd_end_dt;
		}
		public void setBs_scd_end_dt(String bs_scd_end_dt) {
			this.bs_scd_end_dt = bs_scd_end_dt;
		}
		public int getScd_sq2() {
			return scd_sq2;
		}
		public void setScd_sq2(int scd_sq2) {
			this.scd_sq2 = scd_sq2;
		}


		
		
}
