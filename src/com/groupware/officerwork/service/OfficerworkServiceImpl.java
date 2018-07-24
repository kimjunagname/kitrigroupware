package com.groupware.officerwork.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.officerwork.model.OfficerworkDto;

@Service
public class OfficerworkServiceImpl implements OfficerworkService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<OfficerworkDto> getListOfficerwork() {
		// TODO Auto-generated method stub
		return null;
	}

}
