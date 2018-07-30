package com.groupware.commute.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.commute.model.CommuteDto;

@Service
public class CommuteServiceImpl implements CommuteService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<CommuteDto> getCommuteList() {
		// TODO Auto-generated method stub
		return null;
	}

}
