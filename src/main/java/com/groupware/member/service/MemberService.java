package com.groupware.member.service;

import java.util.Map;
import com.groupware.member.model.MemberDto;



public interface MemberService {

	public MemberDto login(Map<String, String> map);
	
	
	
}
