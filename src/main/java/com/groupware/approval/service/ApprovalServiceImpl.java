package com.groupware.approval.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.adminmanager.dao.AdminmanagerDao;
import com.groupware.approval.dao.ApprovalDao;
import com.groupware.approval.model.ApprovalDto;

@Service
public class ApprovalServiceImpl implements ApprovalService {

	
	@Autowired
	private SqlSession sqlSession;
		
	@Override
	public List<ApprovalDto> getListApprovalDto() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ApprovalDao.class).getListApprovalDto();
	}

}
