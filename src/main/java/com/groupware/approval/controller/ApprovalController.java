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
		System.out.println("ApprovalController 왔다!!!");
		//List<MemberDto> list = approvalService.getListAdminManager();
		//map.put("menulist", list);
		ModelAndView mav = new ModelAndView();
	    mav.setViewName("/approval/list"); // /webapp/pds5/list.jsp
		return mav;
	}
	
	@RequestMapping("/select.kitri")
	public ModelAndView selectApprovalManager(Map<String, Object> map) {
		System.out.println("ApprovalController 왔다!!!");
		//List<MemberDto> list = approvalService.getListAdminManager();
		//map.put("menulist", list);
		ModelAndView mav = new ModelAndView();
	    mav.setViewName("/approval/select"); // /webapp/pds5/list.jsp
		return mav;
	}
	
	@RequestMapping("/sign.kitri")
	public ModelAndView signsApprovalManager(Map<String, Object> map) {
		System.out.println("ApprovalController 왔다!!!");
		//List<MemberDto> list = approvalService.getListAdminManager();
		//map.put("menulist", list);
		ModelAndView mav = new ModelAndView();
	    mav.setViewName("/approval/sign"); // /webapp/pds5/list.jsp
		return mav;
	}
	
	
	@RequestMapping("/write.kitri")
	public ModelAndView writeApprovalManager(Map<String, Object> map) {
		System.out.println("ApprovalController 왔다!!!");
		//List<MemberDto> list = approvalService.getListAdminManager();
		//map.put("menulist", list);
		ModelAndView mav = new ModelAndView();
	    mav.setViewName("/approval/write"); // /webapp/pds5/list.jsp
		return mav;
	}
	
	@RequestMapping("/complition.kitri")
	public ModelAndView complitionApprovalManager(Map<String, Object> map) {
		System.out.println("ApprovalController 왔다!!!");
		//List<MemberDto> list = approvalService.getListAdminManager();
		//map.put("menulist", list);
		ModelAndView mav = new ModelAndView();
	    mav.setViewName("/approval/complition"); // /webapp/pds5/list.jsp
		return mav;
	}
	
}
