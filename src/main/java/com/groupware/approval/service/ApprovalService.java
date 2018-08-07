package com.groupware.approval.service;

import java.util.List;
import java.util.Map;

import com.groupware.approval.model.ApprovalDto;

public interface ApprovalService {

	
	List<ApprovalDto> gListApproval(Map<String, String> map);
	List<ApprovalDto> cListApproval(Map<String, String> map);
	List<ApprovalDto> mListApproval(Map<String, String> map);
	List<ApprovalDto> eListApproval(Map<String, String> map);
	
	
}
