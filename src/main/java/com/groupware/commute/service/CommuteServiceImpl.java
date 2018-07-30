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

//	근태목록
	@Override
	public List<CommuteDto> getCommuteList(Map<String, String> map) {
		
		return null;
	}

//	출근
	@Override
	public int punchIn(CommuteDto commuteDto) {
		
		return 0;
	}

//	마지막 출퇴근번호
	@Override
	public int lastPunchInSeq(CommuteDto commuteDto) {
		
		return 0;
	}

//	퇴근
	@Override
	public int punchOut(int cmt_sq) {
		
		return 0;
	}
	

}
