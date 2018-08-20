package com.groupware.approval.service;

import java.util.List;
import java.util.Map;

import com.groupware.approval.model.ApprovalDto;
import com.groupware.email.dao.EmailDao;

public interface ApprovalService {

	
	List<ApprovalDto> gListApproval(Map<String, String> map);
	List<ApprovalDto> cListApproval(Map<String, String> map);
	List<ApprovalDto> eListApproval(Map<String, String> map);
	List<ApprovalDto> mListApproval(Map<String, String> map);

	List<ApprovalDto> gListOneApprovalRequest(Map<String, String> map);
	List<ApprovalDto> cListOneApprovalRequest(Map<String, String> map);
	List<ApprovalDto> eListOneApprovalRequest(Map<String, String> map);	
	List<ApprovalDto> mListOneApprovalRequest(Map<String, String> map);
	
	//2�� ���� ��û
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
	
	//�Ϲݰ��� ���� ��
	List<ApprovalDto> ViewApproval(Map<String, String> map);
	
	//����ۼ�
	int writeApproval(ApprovalDto approvalDto);
	
	
	//public void modify(Map<String, Object> param) throws Exception;
	//�߰� ����
	public void middleApproval(Map<String, Object> param) throws Exception;
	//int middleApproval(ApprovalDto approvalDto);

	//���� ����
	public void fnlApproval(Map<String, Object> param) throws Exception;
	//int fnlApproval(ApprovalDto approvalDto);
	
	//�ӽ�����
	int tempApproval(ApprovalDto approvalDto);
}
