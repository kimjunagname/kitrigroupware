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


	
	
	@Override
	public List<ApprovalDto> gListCountApproval(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).gListCountApproval(map);
	}

	@Override
	public List<ApprovalDto> cListCountApproval(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).cListCountApproval(map);
	}

	@Override
	public List<ApprovalDto> mListCountApproval(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).mListCountApproval(map);
	}


	@Override
	public List<ApprovalDto> eListCountApproval(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).eListCountApproval(map);
	}

	
	@Override
	public List<ApprovalDto> gProgress(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).gProgress(map);
	}

	@Override
	public List<ApprovalDto> cProgress(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).cProgress(map);
	}

	@Override
	public List<ApprovalDto> eProgress(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).eProgress(map);
	}

	@Override
	public List<ApprovalDto> mProgress(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).mProgress(map);
	}

	
	@Override
	public List<ApprovalDto> gEndApproval(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).gEndApproval(map);
	}

	@Override
	public List<ApprovalDto> cEndApproval(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).cEndApproval(map);
	}

	@Override
	public List<ApprovalDto> eEndApproval(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).eEndApproval(map);
	}

	@Override
	public List<ApprovalDto> mEndApproval(Map<String, String> map) {
		return sqlSession.getMapper(ApprovalDao.class).mEndApproval(map);
	}

	
}
