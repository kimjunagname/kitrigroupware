package com.groupware.organization.service;

import java.util.List;
import java.util.Map;

import com.groupware.organization.model.OrganizationDto;

public interface OrganizationService {

	public int officerListCount(Map params) throws Exception;
	public List selectStf_tb() throws Exception;
	public List selectAdmn_Tb() throws Exception;
	public List selectRnk_Tb() throws Exception;
	public List selectDpt_Div_Tb() throws Exception;
	public List officerList(Map params) throws Exception;
	public int deptInsert(Map<String, Object> params) throws Exception;
	public int deptDelete(Map<String, Object> params) throws Exception;
	public int selectDeptNm(Map<String, Object> params) throws Exception;
	public int selectStf_Sq(Map<String, Object> params);
	public Map<String, Object> selectUpdateOfficer(Map<String, Object> params) throws Exception;
	public void officerUpdate(OrganizationDto organizationDto);
	public void officerLayoff(OrganizationDto organizationDto);
	public int officerInsert(OrganizationDto organizationDto); 
}