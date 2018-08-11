package com.groupware.email.service;

import java.util.List;
import java.util.Map;

import com.groupware.email.model.EmailDto;

public interface EmailService {

	public int sndCount(String stf_snd_sq) throws Exception;

	public List<EmailDto> sndListAll(EmailDto emailDto) throws Exception;

	public int rcvCount(String stf_rcv_sq) throws Exception;

	public List<EmailDto> rcvListAll(EmailDto emailDto) throws Exception;

	public int keepCount(String stf_rcv_sq) throws Exception;

	public List<EmailDto> keepListAll(EmailDto evo) throws Exception;

	public int rcvSearchCount(EmailDto params) throws Exception;

	public int sndSearchCount(EmailDto params) throws Exception;

	public int keepSearchCount(EmailDto params) throws Exception;

	public EmailDto read(Map<String, Object> param) throws Exception;

	public void remove(Map<String, Object> param) throws Exception;

	public void regist(EmailDto emailDto) throws Exception;

	public void regist2(EmailDto emailDto) throws Exception;

	public void regist3(EmailDto emailDto) throws Exception;

	public void modify(Map<String, Object> param) throws Exception;

}
