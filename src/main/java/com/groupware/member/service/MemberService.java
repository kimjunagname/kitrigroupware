package com.groupware.member.service;

import java.util.Map;
import com.groupware.member.model.MemberDto;



public interface MemberService {

	public MemberDto login(Map<String, String> map);
	
	public int registerMember(MemberDto dto);
	
	public MemberDto findId(Map<String, String> map);
	
	public MemberDto findPw(Map<String, String> map);	
	public int emlCheck(Map<String, String> map);
	
}
