package com.groupware.member.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.member.dao.MemberDao;
import com.groupware.member.model.MemberDto;

@Service
public class MemberServiceImpl implements MemberService {


	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberDto login(Map<String, String> map) {			
		return sqlSession.getMapper(MemberDao.class).login(map);
	}
	
	

}
