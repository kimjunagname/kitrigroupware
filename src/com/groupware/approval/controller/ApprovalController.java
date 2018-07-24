package com.groupware.approval.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupware.approval.model.ApprovalDto;
import com.groupware.approval.service.ApprovalService;

@Controller
@RequestMapping("/approval")
public class ApprovalController {

	
	@Autowired
	private ApprovalService approvalService;
	
	@RequestMapping("/approval.kitri")
	public String listApproval(Map<String, Object> map) {
		List<ApprovalDto> list = approvalService.getListApprovalDto();
		map.put("menulist", list);
		return "admin/board/boardmenu";
	}
	
}
