package com.groupware.approval.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.groupware.approval.dao.ApprovalDao;
import com.groupware.approval.model.ApprovalDto;

@Service
public class ApprovalServiceImpl implements ApprovalService {

	
	@Autowired
	private SqlSession sqlSession;

	
	//일반공문
	@Override
	public List<ApprovalDto> gListApproval(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).gListApproval(map);
	}

	//협조공문
	@Override
	public List<ApprovalDto> cListApproval(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).cListApproval(map);
	}

	//메모공문
	@Override
	public List<ApprovalDto> mListApproval(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).mListApproval(map);
	}

	//기타공문
	@Override
	public List<ApprovalDto> eListApproval(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).eListApproval(map);
	}
	
}
