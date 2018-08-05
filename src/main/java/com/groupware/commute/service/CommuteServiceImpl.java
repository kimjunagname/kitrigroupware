package com.groupware.commute.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.commute.dao.CommuteDao;
import com.groupware.commute.model.CommuteDto;

@Service
public class CommuteServiceImpl implements CommuteService {

	@Autowired
	private SqlSession sqlSession;

//	근태목록
	@Override
	public List<CommuteDto> getCommuteList(Map<String, String> map) {
		
		return sqlSession.getMapper(CommuteDao.class).getCommuteList(map);
	}

//	출근
	@Override
	public int punchIn(CommuteDto commuteDto) {
		if(commuteDto.getCmt_msg().length() != 0 || !"".equals(commuteDto.getCmt_msg())) {
			commuteDto.setCmt_msg("[출근]" + commuteDto.getCmt_msg());
		}
		return sqlSession.getMapper(CommuteDao.class).punchIn(commuteDto);
	}

//	마지막 출퇴근번호
	@Override
	public int lastPunchInSeq(int stf_sq) {
//		return sqlSession.getMapper(CommuteDao.class).lastPunchInSeq(stf_sq);
		return 0;
	}

//	퇴근
	@Override
	public int punchOut(CommuteDto commuteDto) {
		if(commuteDto.getCmt_msg().length() != 0 || !"".equals(commuteDto.getCmt_msg())) {
			commuteDto.setCmt_msg(commuteDto.getCmt_msg() + "[퇴근]");
		}
		return sqlSession.getMapper(CommuteDao.class).punchOut(commuteDto);
	}

}
