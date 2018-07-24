package com.groupware.member.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.member.model.MemberDto;

@Service
public class MemberServiceImpl implements MemberService {


	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MemberDto> getListmember() {
		// TODO Auto-generated method stub
		return null;
	}

}
