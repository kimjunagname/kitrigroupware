package com.groupware.approval.service;

import java.util.List;
import java.util.Map;

import com.groupware.approval.model.ApprovalDto;

public interface ApprovalService {

	
	List<ApprovalDto> gListApproval(Map<String, String> map);
	List<ApprovalDto> cListApproval(Map<String, String> map);
	List<ApprovalDto> mListApproval(Map<String, String> map);
	List<ApprovalDto> eListApproval(Map<String, String> map);

	List<ApprovalDto> tgListApproval(Map<String, String> map);
	List<ApprovalDto> tcListApproval(Map<String, String> map);
	List<ApprovalDto> tmListApproval(Map<String, String> map);
	List<ApprovalDto> teListApproval(Map<String, String> map);
	
	List<ApprovalDto> gListCountApproval(Map<String, String> map);
	List<ApprovalDto> cListCountApproval(Map<String, String> map);
	List<ApprovalDto> mListCountApproval(Map<String, String> map);
	List<ApprovalDto> eListCountApproval(Map<String, String> map);

	List<ApprovalDto> gProgress(Map<String, String> map);
	List<ApprovalDto> cProgress(Map<String, String> map);
	List<ApprovalDto> eProgress(Map<String, String> map);
	List<ApprovalDto> mProgress(Map<String, String> map);

	List<ApprovalDto> gEndApproval(Map<String, String> map);
	List<ApprovalDto> cEndApproval(Map<String, String> map);
	List<ApprovalDto> eEndApproval(Map<String, String> map);
	List<ApprovalDto> mEndApproval(Map<String, String> map);
	
	//일반공문 선택 뷰
	List<ApprovalDto> ViewApproval(Map<String, String> map);
	
	int writeApproval(ApprovalDto approvalDto);
}
