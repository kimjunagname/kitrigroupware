package com.groupware.approval.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.groupware.approval.model.ApprovalDto;
import com.groupware.approval.service.ApprovalService;
import com.groupware.member.model.MemberDto;


@Controller
@RequestMapping("/approval")
public class ApprovalController {

	
	@Autowired
	private ApprovalService approvalService;
	
	@RequestMapping(value="/list.kitri", method=RequestMethod.GET)
	public ModelAndView listApprovalManager(HttpSession session, @RequestParam Map<String, String> map) {
		System.out.println("ApprovalController in - listApprovalManager");
		
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		map.put("stf_sq", memberDto.getStf_sq());
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
		}
		
		List <ApprovalDto> gListApproval = approvalService.gListApproval(map);
		List <ApprovalDto> eListApproval = approvalService.eListApproval(map);
		List <ApprovalDto> mListApproval = approvalService.mListApproval(map);
		List <ApprovalDto> cListApproval = approvalService.cListApproval(map);
		
		List <ApprovalDto> gListCountApproval = approvalService.gListCountApproval(map);
		List <ApprovalDto> cListCountApproval = approvalService.cListCountApproval(map);
		List <ApprovalDto> mListCountApproval = approvalService.mListCountApproval(map);
		List <ApprovalDto> eListCountApproval = approvalService.eListCountApproval(map);
		
		
		List <ApprovalDto> gProgress = approvalService.gProgress(map);
		List <ApprovalDto> cProgress = approvalService.cProgress(map);
		List <ApprovalDto> mProgress = approvalService.mProgress(map);
		List <ApprovalDto> eProgress = approvalService.eProgress(map);
		
		List <ApprovalDto> gEndApproval = approvalService.gEndApproval(map);
		List <ApprovalDto> cEndApproval = approvalService.cEndApproval(map);
		List <ApprovalDto> mEndApproval = approvalService.mEndApproval(map);
		List <ApprovalDto> eEndApproval = approvalService.eEndApproval(map);		
		
		mav.addObject("stf_sq", session.getAttribute("stf_sq"));
		mav.addObject("gListCountApproval", gListCountApproval);
		mav.addObject("cListCountApproval", cListCountApproval);
		mav.addObject("mListCountApproval", mListCountApproval);
		mav.addObject("eListCountApproval", eListCountApproval);	
		
		mav.addObject("gListApproval", gListApproval);
		mav.addObject("cListApproval", cListApproval);
		mav.addObject("eListApproval", eListApproval);
		mav.addObject("mListApproval", mListApproval);	
		
		mav.addObject("gProgress", gProgress);
		mav.addObject("cProgress", cProgress);
		mav.addObject("mProgress", mProgress);
		mav.addObject("eProgress", eProgress);			
		
		mav.addObject("gEndApproval", gEndApproval);
		mav.addObject("cEndApproval", cEndApproval);
		mav.addObject("mEndApproval", mEndApproval);
		mav.addObject("eEndApproval", eEndApproval);		
		
		System.out.println("gListCountApproval" + gListCountApproval);
		System.out.println("cListCountApproval" + cListCountApproval);
		System.out.println("mListCountApproval" + mListCountApproval);
		System.out.println("eListCountApproval" + eListCountApproval);
		
		System.out.println("gProgress" + gProgress);
		System.out.println("cProgress" + cProgress);
		System.out.println("mProgress" + mProgress);
		System.out.println("eProgress" + eProgress);
		
		System.out.println("gEndApproval" + gEndApproval);
		System.out.println("cEndApproval" + cEndApproval);
		System.out.println("mEndApproval" + mEndApproval);
		System.out.println("eEndApproval" + eEndApproval);
		

	    mav.setViewName("/approval/list"); // /webapp/pds5/list.jsp
		return mav;
	}
	
	@RequestMapping("/write.kitri")
	public ModelAndView writeApprovalManager(Map<String, Object> map) {
		System.out.println("ApprovalController in!!! -- write");
		//List<MemberDto> list = approvalService.getListAdminManager();
		//map.put("menulist", list);
		ModelAndView mav = new ModelAndView();
	    mav.setViewName("/approval/write"); // /webapp/pds5/list.jsp
		return mav;
	}
	
	@RequestMapping("/mwrite.kitri")
	public ModelAndView mwriteApprovalManager(Map<String, Object> map) {
		System.out.println("ApprovalController in!!! -- write");
		//List<MemberDto> list = approvalService.getListAdminManager();
		//map.put("menulist", list);
		ModelAndView mav = new ModelAndView();
	    mav.setViewName("/approval/mwrite"); // /webapp/pds5/list.jsp
		return mav;
	}
	
}
