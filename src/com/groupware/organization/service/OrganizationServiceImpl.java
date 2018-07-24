package com.groupware.organization.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.organization.model.OrganizationDto;

@Service
public class OrganizationServiceImpl implements OrganizationService {

	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<OrganizationDto> getListOrganization() {
		// TODO Auto-generated method stub
		return null;
	}

}
