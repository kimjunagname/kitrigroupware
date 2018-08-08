package com.groupware.approval.dao;

import java.util.List;
import java.util.Map;

import com.groupware.approval.model.ApprovalDto;

public interface ApprovalDao {
	
	List<ApprovalDto> gListApproval(Map<String, String> map);
	List<ApprovalDto> cListApproval(Map<String, String> map);
	List<ApprovalDto> mListApproval(Map<String, String> map);
	List<ApprovalDto> eListApproval(Map<String, String> map);
	
	
	List<ApprovalDto> gListCountApproval(Map<String, String> map);
	List<ApprovalDto> cListCountApproval(Map<String, String> map);
	List<ApprovalDto> mListCountApproval(Map<String, String> map);
	List<ApprovalDto> eListCountApproval(Map<String, String> map);

}
