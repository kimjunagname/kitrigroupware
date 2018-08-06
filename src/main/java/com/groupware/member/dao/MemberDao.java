package com.groupware.member.dao;

import java.util.Map;

import com.groupware.member.model.MemberDto;

public interface MemberDao {

	public MemberDto login(Map<String, String> map);
	
	public int registerMember(MemberDto dto);
	
	public MemberDto findId(Map<String, String> map);
	
	public MemberDto findPw(Map<String, String> map);
	
	public int emlCheck(Map<String, String> map);
	
}
