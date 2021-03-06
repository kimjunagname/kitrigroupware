package com.groupware.email.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.groupware.email.dao.EmailDao;
import com.groupware.email.model.EmailDto;

@Service
public class EmailServiceImpl implements EmailService {	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int sndCount(String stf_snd_sq) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EmailDao.class).sndCount(stf_snd_sq);
	}

	@Override
	public List<EmailDto> sndListAll(EmailDto emailDto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EmailDao.class).sndListAll(emailDto);
	}

	@Override
	public int rcvCount(String stf_rcv_sq) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EmailDao.class).rcvCount(stf_rcv_sq);
	}

	@Override
	public List<EmailDto> rcvListAll(EmailDto emailDto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EmailDao.class).rcvListAll(emailDto);
	}

	@Override
	public int keepCount(String stf_rcv_sq) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<EmailDto> keepListAll(EmailDto emailDto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EmailDao.class).keepListAll(emailDto);
	}

	@Override
	public int rcvSearchCount(EmailDto params) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int sndSearchCount(EmailDto params) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int keepSearchCount(EmailDto params) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public EmailDto read(Map<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EmailDao.class).read(param);
	}

	@Override
	public void remove(Map<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.getMapper(EmailDao.class).remove(param);
	}

	@Override
	@Transactional
	public void regist(EmailDto emailDto) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.getMapper(EmailDao.class).regist(emailDto);
	}

	@Override
	@Transactional
	public void regist2(EmailDto emailDto) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.getMapper(EmailDao.class).regist2(emailDto);
	}

	@Override
	@Transactional
	public void regist3(EmailDto emailDto) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.getMapper(EmailDao.class).regist3(emailDto);
	}

	@Override
	public void modify(Map<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.getMapper(EmailDao.class).modify(param);
		
	}

	@Override
	public EmailDto sendRead(Map<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EmailDao.class).sendRead(param);
	}

	@Override
	public EmailDto keepRead(Map<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EmailDao.class).keepRead(param);
	}
			
}
