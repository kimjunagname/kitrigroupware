package com.groupware.commute.dao;

import java.util.List;
import java.util.Map;

import com.groupware.commute.model.CommuteDto;

public interface CommuteDao {

//	���¸��
	List<CommuteDto> getCommuteList(Map<String, String> map);
//	���
	int punchIn(CommuteDto commuteDto);
//	������ ����ٹ�ȣ
	int lastPunchInSeq(int stf_sq);
//	���
	int punchOut(CommuteDto commuteDto);
	
	
}
