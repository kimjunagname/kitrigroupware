package com.groupware.adminmanager.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.adminmanager.dao.AdminmanagerDao;
import com.groupware.member.model.MemberDto;

@Service
public class AdminmanagerServiceImpl implements AdminmanagerService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MemberDto> getListAdminManager() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(AdminmanagerDao.class).getListAdminManager();
	}

}
