package com.groupware.schedule.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.groupware.schedule.model.ScheduleDivisionDto;

@Service
public class ScheduleServiceImpl implements ScheduleService {


	@Autowired
	private SqlSession sqlSession;
		
	@Override
	@Transactional
	public List<ScheduleDivisionDto> getListSchedule() {
		// TODO Auto-generated method stub
		return null;
	}

}
