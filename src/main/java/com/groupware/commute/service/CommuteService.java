package com.groupware.commute.service;

import java.util.List;
import java.util.Map;

import com.groupware.commute.model.CommuteDto;

public interface CommuteService {

//	���¸��
	List<CommuteDto> getCommuteList(Map<String, String> map);
//	���
	int punchIn(CommuteDto commuteDto);
//	������ ����ٹ�ȣ
	int lastPunchInSeq(CommuteDto commuteDto);
//	���
	int punchOut(int cmt_sq);
	
	
}
