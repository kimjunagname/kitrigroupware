package com.groupware.organization.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.groupware.organization.dao.OrganizationDao;
@Service
public class OrganizationServiceImpl implements OrganizationService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int officerListCount(Map params) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(OrganizationDao.class).officerListCount(params);
	}

	@Override
	public List selectStf_tb() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(OrganizationDao.class).selectStf_tb();
	}

	@Override
	public List selectAdmn_Tb() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(OrganizationDao.class).selectAdmn_Tb();
	}

	@Override
	public List selectRnk_Tb() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(OrganizationDao.class).selectRnk_Tb();
	}

	@Override
	public List selectDpt_Div_Tb() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(OrganizationDao.class).selectDpt_Div_Tb();
	}

	@Override
	public List officerList(Map params) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(OrganizationDao.class).officerList(params);
	}

	@Override
	public int deptInsert(Map<String, Object> params) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(OrganizationDao.class).deptInsert(params);
	}

	@Override
	public int deptDelete(Map<String, Object> params) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(OrganizationDao.class).deptDelete(params);
	}

	@Override
	public int deptUpdate(Map<String, Object> params) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(OrganizationDao.class).deptUpdate(params);
	}

	@Override
	public int selectDeptNm(Map<String, Object> params) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(OrganizationDao.class).selectDeptNm(params);
	}
	
}
