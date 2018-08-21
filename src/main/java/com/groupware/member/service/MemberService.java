package com.groupware.member.service;

import java.util.List;
import java.util.Map;
import com.groupware.member.model.MemberDto;
import com.groupware.member.model.MemberRankDto;



public interface MemberService {
	
	public List<MemberRankDto> dptlist();

	public MemberDto login(Map<String, String> map);
	
	public int registerMember(MemberDto dto);
	
	public MemberDto findId(Map<String, String> map);
	
	public MemberDto findPw(Map<String, String> map);	
	public int emlCheck(Map<String, String> map);
	public void deletemember(int stf_sq);
	public void modifymember(Map<String, String> map);
	
}
