package com.groupware.organization.dao;

import java.util.List;
import java.util.Map;

public interface OrganizationDao {
	int officerListCount(Map params) throws Exception;
	List selectStf_tb() throws Exception;
	List selectAdmn_Tb() throws Exception;
	List selectRnk_Tb() throws Exception;
	List selectDpt_Div_Tb() throws Exception;
}
