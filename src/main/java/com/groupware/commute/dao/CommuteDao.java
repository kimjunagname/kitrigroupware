package com.groupware.commute.dao;

import java.util.List;
import java.util.Map;

import com.groupware.commute.model.CommuteDto;

public interface CommuteDao {

//	근태목록
	List<CommuteDto> getCommuteList(Map<String, String> map);
//	출근
	int punchIn(CommuteDto commuteDto);
//	마지막 출퇴근번호
	int lastPunchInSeq(CommuteDto commuteDto);
//	퇴근
	int punchOut(int cmt_sq);
	
	
}
