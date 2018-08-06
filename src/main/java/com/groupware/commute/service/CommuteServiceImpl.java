package com.groupware.commute.service;

import java.util.LinkedHashMap;
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

//	���¸��
	@Override
	public List<CommuteDto> getCommuteList(Map<String, String> map) {
		return sqlSession.getMapper(CommuteDao.class).getCommuteList(map);
	}
	
//	�μ����¸��	
	@Override
	public List<LinkedHashMap<String, String>> getCommuteListDepartment(Map<String, String> map) {
		return sqlSession.getMapper(CommuteDao.class).getCommuteListDepartment(map);
	}

//	���
	@Override
	public int punchIn(CommuteDto commuteDto) {
		if(commuteDto.getCmt_msg().length() != 0 || !"".equals(commuteDto.getCmt_msg())) {
			commuteDto.setCmt_msg("[���]" + commuteDto.getCmt_msg());
		}
		return sqlSession.getMapper(CommuteDao.class).punchIn(commuteDto);
	}

//	���
	@Override
	public int punchOut(CommuteDto commuteDto) {
		if(commuteDto.getCmt_msg().length() != 0 || !"".equals(commuteDto.getCmt_msg())) {
			commuteDto.setCmt_msg("[���]" + commuteDto.getCmt_msg());
		}
		return sqlSession.getMapper(CommuteDao.class).punchOut(commuteDto);
	}

}
