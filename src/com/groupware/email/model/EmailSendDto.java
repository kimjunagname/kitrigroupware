package com.groupware.email.model;

public class EmailSendDto {

	
	private int snd_eml_sq; /* ����������ȣ */
	private String snd_rcv_sq;  /* ���������ȣ */
	private int eml_sq;  /* ������ȣ */
	private String snd_dt; /* �߽Žð� */
	public int getSnd_eml_sq() {
		return snd_eml_sq;
	}
	public void setSnd_eml_sq(int snd_eml_sq) {
		this.snd_eml_sq = snd_eml_sq;
	}
	public String getSnd_rcv_sq() {
		return snd_rcv_sq;
	}
	public void setSnd_rcv_sq(String snd_rcv_sq) {
		this.snd_rcv_sq = snd_rcv_sq;
	}
	public int getEml_sq() {
		return eml_sq;
	}
	public void setEml_sq(int eml_sq) {
		this.eml_sq = eml_sq;
	}
	public String getSnd_dt() {
		return snd_dt;
	}
	public void setSnd_dt(String snd_dt) {
		this.snd_dt = snd_dt;
	}
	
}
