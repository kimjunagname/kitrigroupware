package com.groupware.commute.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.commute.model.CommuteDto;

@Service
public class CommuteServiceImpl implements CommuteService {

	@Autowired
	private SqlSession sqlSession;

//	���¸��
	@Override
	public List<CommuteDto> getCommuteList(Map<String, String> map) {
		
		return null;
	}

//	���
	@Override
	public int punchIn(CommuteDto commuteDto) {
		
		return 0;
	}

//	������ ����ٹ�ȣ
	@Override
	public int lastPunchInSeq(CommuteDto commuteDto) {
		
		return 0;
	}

//	���
	@Override
	public int punchOut(int cmt_sq) {
		
		return 0;
	}
	

}
