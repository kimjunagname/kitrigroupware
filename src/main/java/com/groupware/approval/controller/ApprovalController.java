package com.groupware.approval.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.groupware.approval.model.ApprovalDto;
import com.groupware.approval.service.ApprovalService;
import com.groupware.member.model.MemberDto;
import com.groupware.organization.service.OrganizationService;


@Controller
@RequestMapping("/approval")
public class ApprovalController {

	
	@Autowired
	private ApprovalService approvalService;
	
	@Autowired
	private OrganizationService organizationService;

	
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
		
		//System.out.println("gListCountApproval" + gListCountApproval);
		//System.out.println("cListCountApproval" + cListCountApproval);
		//System.out.println("mListCountApproval" + mListCountApproval);
		//System.out.println("eListCountApproval" + eListCountApproval);
		
		//System.out.println("gProgress" + gProgress);
		//System.out.println("cProgress" + cProgress);
		//System.out.println("mProgress" + mProgress);
		//System.out.println("eProgress" + eProgress);
		
		//System.out.println("gEndApproval" + gEndApproval);
		//System.out.println("cEndApproval" + cEndApproval);
		//System.out.println("mEndApproval" + mEndApproval);
		//System.out.println("eEndApproval" + eEndApproval);
		
	    mav.setViewName("/approval/list"); // /webapp/pds5/list.jsp
		return mav;
	}
	
	//일반, 협조, 기타 공문시 > view.jsp 이동
	@RequestMapping(value="/view.kitri", method=RequestMethod.GET)
	public ModelAndView viewApprovalManager(HttpSession session, @RequestParam Map<String, String> map) {
		System.out.println("ApprovalController - view");
		
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		map.put("stf_sq", memberDto.getStf_sq());
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
		}
		List <ApprovalDto> ViewApproval = approvalService.ViewApproval(map);
		
		mav.addObject("stf_sq", session.getAttribute("stf_sq"));
		mav.addObject("ViewApproval", ViewApproval);
		
		System.out.println("ViewApproval" + ViewApproval);
	    mav.setViewName("/approval/view"); // /webapp/pds5/list.jsp
		return mav;
	}
	
	//메모 공문시 > mview.jsp 이동
	@RequestMapping(value="/mview.kitri", method=RequestMethod.GET)
	public ModelAndView gviewApprovalManager(HttpSession session, @RequestParam Map<String, String> map) {
		System.out.println("ApprovalController - mview");
		
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		map.put("stf_sq", memberDto.getStf_sq());
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
		}
		List <ApprovalDto> ViewApproval = approvalService.ViewApproval(map);
		
		mav.addObject("stf_sq", session.getAttribute("stf_sq"));
		mav.addObject("ViewApproval", ViewApproval);
		
		System.out.println("ViewApproval" + ViewApproval);
	    mav.setViewName("/approval/mview"); // /webapp/pds5/list.jsp
		return mav;
	}
	
	//일반 공문 > 일반 공문 테이블
	@RequestMapping(value="/glist.kitri", method=RequestMethod.GET)
	public ModelAndView glistApprovalManager(HttpSession session, @RequestParam Map<String, String> map) {
		System.out.println("ApprovalController in - listApprovalManager");
		
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		map.put("stf_sq", memberDto.getStf_sq());
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
		}
		
		List <ApprovalDto> tgListApproval = approvalService.tgListApproval(map);
		List <ApprovalDto> gListCountApproval = approvalService.gListCountApproval(map);
		
		//진행
		List <ApprovalDto> gProgress = approvalService.gProgress(map);
		
		//종료
		List <ApprovalDto> gEndApproval = approvalService.gEndApproval(map);	
		mav.addObject("stf_sq", session.getAttribute("stf_sq"));
		mav.addObject("gListCountApproval", gListCountApproval);
		mav.addObject("tgListApproval", tgListApproval);	
		mav.addObject("gProgress", gProgress);		
		mav.addObject("gEndApproval", gEndApproval);	
		
		System.out.println("tgListApproval" + tgListApproval);
		System.out.println("gListCountApproval" + gListCountApproval);
		System.out.println("gProgress" + gProgress);
		System.out.println("gEndApproval" + gEndApproval);
		
	    mav.setViewName("/approval/glist"); // /webapp/pds5/list.jsp
		return mav;
	}
	
	
	//일반 공문 > 일반 공문 테이블
		@RequestMapping(value="/clist.kitri", method=RequestMethod.GET)
		public ModelAndView clistApprovalManager(HttpSession session, @RequestParam Map<String, String> map) {
			System.out.println("ApprovalController in - clistApprovalManager");
			
			ModelAndView mav = new ModelAndView();
			MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
			map.put("stf_sq", memberDto.getStf_sq());
			if(map.size() == 0) {
				map.put("stf_sq", (String) session.getAttribute("stf_sq"));
			}
			
			List <ApprovalDto> tcListApproval = approvalService.tcListApproval(map);
		
			List <ApprovalDto> cListCountApproval = approvalService.cListCountApproval(map);
			
			//진행
			List <ApprovalDto> cProgress = approvalService.cProgress(map);
			
			//종료
			List <ApprovalDto> cEndApproval = approvalService.cEndApproval(map);
						
			mav.addObject("stf_sq", session.getAttribute("stf_sq"));
			mav.addObject("cListCountApproval", cListCountApproval);
			mav.addObject("tcListApproval", tcListApproval);
			mav.addObject("cProgress", cProgress);
			mav.addObject("cEndApproval", cEndApproval);
			
			System.out.println("tcListApproval" + tcListApproval);
			System.out.println("cListCountApproval" + cListCountApproval);
			System.out.println("cProgress" + cProgress);
			System.out.println("cEndApproval" + cEndApproval);

		    mav.setViewName("/approval/clist"); // /webapp/pds5/list.jsp
			return mav;
		}
	
		//일반 공문 > 일반 공문 테이블
		@RequestMapping(value="/elist.kitri", method=RequestMethod.GET)
		public ModelAndView elistApprovalManager(HttpSession session, @RequestParam Map<String, String> map) {
			System.out.println("ApprovalController in - elistApprovalManager");
			
			ModelAndView mav = new ModelAndView();
			MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
			map.put("stf_sq", memberDto.getStf_sq());
			if(map.size() == 0) {
				map.put("stf_sq", (String) session.getAttribute("stf_sq"));
			}
			
			List <ApprovalDto> teListApproval = approvalService.teListApproval(map);
			
			List <ApprovalDto> eListCountApproval = approvalService.eListCountApproval(map);
			
			//진행
			List <ApprovalDto> eProgress = approvalService.eProgress(map);
			
			//종료
			List <ApprovalDto> eEndApproval = approvalService.eEndApproval(map);	
			
			
			mav.addObject("stf_sq", session.getAttribute("stf_sq"));
			mav.addObject("eListCountApproval", eListCountApproval);
			
			mav.addObject("teListApproval", teListApproval);	
			
			mav.addObject("eProgress", eProgress);			
			
			mav.addObject("eEndApproval", eEndApproval);	
			
			System.out.println("teListApproval" + teListApproval);
			System.out.println("eListCountApproval" + eListCountApproval);
			System.out.println("eProgress" + eProgress);
			System.out.println("eEndApproval" + eEndApproval);
			
		    mav.setViewName("/approval/elist"); // /webapp/pds5/list.jsp
			return mav;
		}
		
		
		//일반 공문 > 일반 공문 테이블
		@RequestMapping(value="/mlist.kitri", method=RequestMethod.GET)
		public ModelAndView mlistApprovalManager(HttpSession session, @RequestParam Map<String, String> map) {
			System.out.println("ApprovalController in - elistApprovalManager");
			
			ModelAndView mav = new ModelAndView();
			MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
			map.put("stf_sq", memberDto.getStf_sq());
			if(map.size() == 0) {
				map.put("stf_sq", (String) session.getAttribute("stf_sq"));
			}
			
			List <ApprovalDto> tmListApproval = approvalService.tmListApproval(map);
			List <ApprovalDto> mListCountApproval = approvalService.mListCountApproval(map);
			
			//진행
			List <ApprovalDto> mProgress = approvalService.mProgress(map);
			
			//종료
			List <ApprovalDto> mEndApproval = approvalService.mEndApproval(map);	
			
			
			mav.addObject("stf_sq", session.getAttribute("stf_sq"));
			mav.addObject("mListCountApproval", mListCountApproval);
			
			mav.addObject("tmListApproval", tmListApproval);	
			
			mav.addObject("mProgress", mProgress);			
			
			mav.addObject("mEndApproval", mEndApproval);	
			
			System.out.println("tmListApproval" + tmListApproval);
			System.out.println("mListCountApproval" + mListCountApproval);
			
			System.out.println("mProgress" + mProgress);
			
			System.out.println("mEndApproval" + mEndApproval);
			
		    mav.setViewName("/approval/mlist"); // /webapp/pds5/list.jsp
			return mav;
		}
	
//	@RequestMapping(value="/write.kitri", method=RequestMethod.GET)
//		public ModelAndView writeApprovalManager(HttpSession session, @RequestParam Map<String, String> map) {
//			System.out.println("ApprovalController in!!! -- GET - write > write");
//			ModelAndView mav = new ModelAndView();
//			MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
//			map.put("stf_sq", memberDto.getStf_sq());
//			if(map.size() == 0) {
//				map.put("stf_sq", (String) session.getAttribute("stf_sq"));
//			}
//			mav.setViewName("/approval/write"); // /webapp/pds5/list.jsp
//			return mav;
//		}	
		
	
		
	@RequestMapping(value="/write.kitri", method=RequestMethod.GET)
	public ModelAndView writeApprovalManager(HttpSession session, @RequestParam Map<String, String> map, Model model, HttpServletRequest request, RedirectAttributes attr) throws  Exception{
		System.out.println("ApprovalController in!!! -- GET - write > write");
		
	     // 필요없는건 나중에 삭제 예정
	    List officerList = new ArrayList<HashMap<String, Object>>();
	    int officerListCount = 0;
	    Map params = new HashMap<String, Object>();
	    List selectStf_tb = new ArrayList<HashMap<String, Object>>();
	    List selectAdmn_Tb = new ArrayList<HashMap<String, Object>>();
	    List selectRnk_Tb = new ArrayList<HashMap<String, Object>>();
	    List selectDpt_Div_Tb = new ArrayList<HashMap<String, Object>>();
	    ModelAndView mav = new ModelAndView();
	    
	    try {
	         officerListCount = organizationService.officerListCount(params);
	         selectStf_tb = organizationService.selectStf_tb();
	         selectAdmn_Tb = organizationService.selectAdmn_Tb();
	         selectRnk_Tb = organizationService.selectRnk_Tb();
	         selectDpt_Div_Tb = organizationService.selectDpt_Div_Tb();
	         // 총 게시물 수 
	         int totalCnt = officerListCount;
	         // 현재 페이지 초기화
	         int current_page = 1;
	         // 만약 사용자로부터 페이지를 받아왔다면
	         if (request.getParameter("page") != null) {
	            current_page = Integer.parseInt((String)request.getParameter("page"));
	         }
	    
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		map.put("stf_sq", memberDto.getStf_sq());
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
		}
		
		 //model.addAttribute("myInfoList", myInfoList);
        model.addAttribute("officerList", officerList);
        model.addAttribute("officerListCount", officerListCount);
        model.addAttribute("selectStf_tb", selectStf_tb);
        model.addAttribute("selectAdmn_Tb", selectAdmn_Tb);
        model.addAttribute("selectRnk_Tb", selectRnk_Tb);
        model.addAttribute("selectDpt_Div_Tb", selectDpt_Div_Tb);
        
        mav.addObject("officerList", officerList);
        mav.addObject("officerListCount", officerListCount);
        mav.addObject("selectStf_tb", selectStf_tb);
        mav.addObject("selectAdmn_Tb", selectAdmn_Tb);
        mav.addObject("selectRnk_Tb", selectRnk_Tb);
        mav.addObject("selectDpt_Div_Tb", selectDpt_Div_Tb);
    	
        mav.setViewName("/approval/write"); // /webapp/pds5/list.jsp
	   
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
		
		return mav;
	}	
	
		
	@RequestMapping(value="/write.kitri", method=RequestMethod.POST)
	public ModelAndView writeApprovalManager(ApprovalDto approvalDto, HttpSession session, @RequestParam Map<String, String> map,  Model model) {
		System.out.println("ApprovalController in!!! -- POST - write > complition");
		
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		map.put("stf_sq", memberDto.getStf_sq());
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
		}
		approvalDto.setStf_sq(memberDto.getStf_sq());
		int seq = approvalService.writeApproval(approvalDto);
		int code = approvalDto.getDiv_apv_sq(); 
		System.out.println("code"+ code);
		if(seq != 0) {
		//	if(code == 1) {
			mav.setViewName("redirect:/approval/select.kitri");
//				return "/approval/list";
				//리다이렉트를 통해서 /approval/list.kitri 이동
			//	mav.setViewName("redirect:/approval/glist.kitri");	
		//	}else if(code == 2) {
		//		mav.setViewName("redirect:/approval/clist.kitri");
		//	}else if(code == 4) {
		//		mav.setViewName("redirect:/approval/elist.kitri");
		//	}else if(code == 3) {
		//		mav.setViewName("redirect:/approval/mlist.kitri");
		//	}
		} else {
			mav.setViewName("/approval/writefail");
		}
		
		
		return mav;
	}
	
	@RequestMapping(value="/mwrite.kitri", method=RequestMethod.GET)
	public ModelAndView mwriteApprovalManager(HttpSession session, @RequestParam Map<String, String> map) {
		System.out.println("ApprovalController in!!! -- GET - mwrite > mwrite");
		
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		map.put("stf_sq", memberDto.getStf_sq());
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
		}
	    mav.setViewName("/approval/mwrite"); // /webapp/pds5/list.jsp
		return mav;
	}
	
	
	@RequestMapping(value="/select.kitri", method=RequestMethod.GET)
	public ModelAndView selectApprovalManager(HttpSession session, @RequestParam Map<String, String> map) {
		System.out.println("ApprovalController -- GET - select > select");
		
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		map.put("stf_sq", memberDto.getStf_sq());
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
		}
	    mav.setViewName("/approval/select"); // /webapp/pds5/list.jsp
		return mav;
	}
	
}
