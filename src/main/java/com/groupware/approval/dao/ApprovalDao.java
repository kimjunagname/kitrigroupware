package com.groupware.approval.dao;

import java.util.List;

import com.groupware.approval.model.ApprovalDto;

public interface ApprovalDao {
	List<ApprovalDto> getListApprovalDto();
	
}
