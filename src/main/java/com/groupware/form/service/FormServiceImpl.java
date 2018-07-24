package com.groupware.form.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.approval.model.ApprovalDto;

@Service
public class FormServiceImpl implements FormService {

	@Autowired
	private SqlSession sqlSession;
		
	@Override
	public List<ApprovalDto> getListForm() {
		// TODO Auto-generated method stub
		return null;
	}

}
