package com.groupware.commute.service;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.groupware.commute.model.CommuteDto;

public interface CommuteService {

//	근태목록
	List<CommuteDto> getCommuteList(Map<String, String> map);
//	부서근태목록
	List<LinkedHashMap<String, String>> getCommuteListDepartment(Map<String, String> map);
//	출근
	int punchIn(CommuteDto commuteDto);
//	퇴근
	int punchOut(CommuteDto commuteDto);
	
	
}
