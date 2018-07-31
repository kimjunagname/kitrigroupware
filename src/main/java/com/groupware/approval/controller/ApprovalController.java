package com.groupware.approval.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.groupware.approval.service.ApprovalService;


@Controller
@RequestMapping("/approval")
public class ApprovalController {

	
	@Autowired
	private ApprovalService approvalService;
	
	@RequestMapping("/list.kitri")
	public ModelAndView listApprovalManager(Map<String, Object> map) {
		System.out.println("ApprovalController ¿Ô´Ù!!!");
		//List<MemberDto> list = approvalService.getListAdminManager();
		//map.put("menulist", list);
		ModelAndView mav = new ModelAndView();
	    mav.setViewName("/approval/list"); // /webapp/pds5/list.jsp
		return mav;
	}
	
	
	
}
