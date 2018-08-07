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
		List <ApprovalDto> cListApproval = approvalService.cListApproval(map);
		List <ApprovalDto> eListApproval = approvalService.eListApproval(map);
		List <ApprovalDto> mListApproval = approvalService.mListApproval(map);
		mav.addObject("stf_sq", session.getAttribute("stf_sq"));
		mav.addObject("gListApproval", gListApproval);
		mav.addObject("cListApproval", cListApproval);
		mav.addObject("eListApproval", eListApproval);
		mav.addObject("mListApproval", mListApproval);	
		
		System.out.println("gListApproval" + gListApproval);
		System.out.println("cListApproval" + cListApproval);
		System.out.println("eListApproval" + eListApproval);
		System.out.println("mListApproval" + mListApproval);

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
