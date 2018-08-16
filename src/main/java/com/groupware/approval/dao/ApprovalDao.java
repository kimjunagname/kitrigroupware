package com.groupware.approval.dao;

import java.util.List;
import java.util.Map;

import com.groupware.approval.model.ApprovalDto;

public interface ApprovalDao {
	
	List<ApprovalDto> gListApproval(Map<String, String> map);
	List<ApprovalDto> cListApproval(Map<String, String> map);
	List<ApprovalDto> mListApproval(Map<String, String> map);
	List<ApprovalDto> eListApproval(Map<String, String> map);
	
	List<ApprovalDto> gListOneApprovalRequest(Map<String, String> map);
	List<ApprovalDto> cListOneApprovalRequest(Map<String, String> map);
	List<ApprovalDto> eListOneApprovalRequest(Map<String, String> map);	
	List<ApprovalDto> mListOneApprovalRequest(Map<String, String> map);
	
	//2차 결재 요청
	List<ApprovalDto> gListTwoApprovalRequest(Map<String, String> map);
	List<ApprovalDto> cListTwoApprovalRequest(Map<String, String> map);
	List<ApprovalDto> eListTwoApprovalRequest(Map<String, String> map);	
	List<ApprovalDto> mListTwoApprovalRequest(Map<String, String> map);
	
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

	//공문 선택 뷰
	List<ApprovalDto> ViewApproval(Map<String, String> map);
	
	//기안작성
	int writeApproval(ApprovalDto approvalDto);
	
	//public void modify(Map<String, Object> param) throws Exception;
	//중간 결재
	public void middleApproval(Map<String, Object> param) throws Exception;
	//int middleApproval(ApprovalDto approvalDto);

	//최종 결재
	public void fnlApproval(Map<String, Object> param) throws Exception;
	//int fnlApproval(ApprovalDto approvalDto);
}
