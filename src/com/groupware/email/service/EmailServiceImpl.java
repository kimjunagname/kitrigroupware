package com.groupware.email.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.email.dao.EmailDao;
import com.groupware.email.model.EmailDto;

@Service
public class EmailServiceImpl implements EmailService {

	
	@Autowired
	private SqlSession sqlSession;
		
	@Override
	public List<EmailDto> getListEmail() {
		System.out.println("EmailServiceImpl 까지 왔습니다.");
		return sqlSession.getMapper(EmailDao.class).getListEmail();
	}
	

	
	
}
