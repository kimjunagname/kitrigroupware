package com.groupware.organization.dao;

import java.util.List;
import java.util.Map;

public interface OrganizationDao {
	int officerListCount(Map params) throws Exception;
	List selectStf_tb() throws Exception;
	List selectAdmn_Tb() throws Exception;
	List selectRnk_Tb() throws Exception;
	List selectDpt_Div_Tb() throws Exception;
	List officerList(Map params) throws Exception;
	int deptInsert(Map<String, Object> params) throws Exception;
	int deptDelete(Map<String, Object> params) throws Exception;
	int deptUpdate(Map<String, Object> params) throws Exception;
	int selectDeptNm(Map<String, Object> params) throws Exception;
}
