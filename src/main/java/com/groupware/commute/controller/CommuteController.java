package com.groupware.commute.controller;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.groupware.commute.model.CommuteDto;
import com.groupware.commute.service.CommuteService;
import com.groupware.member.model.MemberDto;

@Controller
@RequestMapping("/commute")
public class CommuteController {
	
	@Autowired
	private CommuteService commuteService;
	
	@RequestMapping(value="/list.kitri", method=RequestMethod.GET)
	public ModelAndView CommuteList(HttpSession session) {
		System.out.println("CommuteController  CommuteList()");
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		if(memberDto == null) {
			mav.setViewName("redirect:/");
			return mav;
		}

		Map<String, String> map = new HashMap<String, String>();
		map.put("stf_sq", memberDto.getStf_sq());
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
		}
		
		List<CommuteDto> list = commuteService.getCommuteList(map);
		System.out.println("list size = " + list.size());
		int cnt = 0;
		String scd_nm = null;
		for (CommuteDto commuteDto : list) {
			System.out.println(commuteDto);
			if(commuteDto.getScd_cnt() > 0) {
				cnt = commuteDto.getScd_cnt();
				scd_nm = commuteDto.getScd_nm();
			}
			
			if(cnt >= 0) {
				commuteDto.setScd_nm(scd_nm);
				cnt--;
			}
		}
		mav.addObject("stf_sq", session.getAttribute("stf_sq"));
		mav.addObject("commuteList", list);
		mav.setViewName("/commute/list");
		
		return mav;
	}
	
	@RequestMapping(value="/list.kitri", method=RequestMethod.POST)
	public ModelAndView CommuteSearchList(HttpSession session, @RequestParam Map<String, String> map) {
		System.out.println("CommuteController  CommuteSearchList()");
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		if(memberDto == null) {
			mav.setViewName("redirect:/");
			return mav;
		}
		map.put("stf_sq", memberDto.getStf_sq());
		
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
		}
		List<CommuteDto> list = commuteService.getCommuteList(map);
		System.out.println("list size = " + list.size());
		
		int cnt = 0;
		String scd_nm = null;
		for (CommuteDto commuteDto : list) {
			System.out.println(commuteDto);
			if(commuteDto.getScd_cnt() > 0) {
				cnt = commuteDto.getScd_cnt() + 1;
				scd_nm = commuteDto.getScd_nm();
			}
			
			if(cnt > 0) {
				commuteDto.setScd_nm(scd_nm);
				cnt--;
			}
		}
		mav.addObject("stf_sq", map.get("stf_sq"));
		mav.addObject("startDate", map.get("startDate"));
		mav.addObject("endDate", map.get("endDate"));
		mav.addObject("commuteList", list);
		mav.setViewName("/commute/list");
		
		return mav;
	}
	
	
	@RequestMapping(value="/punch.kitri", method=RequestMethod.POST)
	public String punch(HttpSession session, @RequestParam Map<String, String> map) {
		System.out.println("CommuteController  punch()");
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		if(memberDto == null) {
			return "redirect:/";
		}

		int stf_sq = Integer.parseInt(memberDto.getStf_sq());
		map.put("stf_sq", stf_sq + "");
		
		String check = map.get("punch");
		CommuteDto commuteDto = new CommuteDto();
		commuteDto.setStf_sq(map.get("stf_sq"));
		commuteDto.setCmt_msg(map.get("cmt_msg"));
		if("in".equals(check)){
			commuteService.punchIn(commuteDto);
		}else if("out".equals(check)) {
			commuteService.punchOut(commuteDto);
		}
		return "redirect:list.kitri";
	}
	
	@RequestMapping(value="/listdepart.kitri", method=RequestMethod.GET)
	public ModelAndView CommuteListDepartment(HttpSession session) {
		System.out.println("CommuteController  CommuteListDepartment()");
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		if(memberDto == null) {
			mav.setViewName("redirect:/");
			return mav;
		}
		Map<String, String> map = new HashMap<String, String>();
		map.put("dpt_sq", memberDto.getDpt_sq() + "");
		List<LinkedHashMap<String, String>> searchList = commuteService.getCommuteListDepartment(map);
		System.out.println("searchList.size : "+searchList.size());
		mav.addObject("commuteList", searchList);
		mav.setViewName("/commute/list_department");
		return mav;
	}

	@RequestMapping(value="/listdepart.kitri", method=RequestMethod.POST)
	public ModelAndView CommuteSearchDepartment(HttpSession session, @RequestParam Map<String, String> map) {
		System.out.println("CommuteController  CommuteSearchDepartment()");
		ModelAndView mav = new ModelAndView();
		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		if(memberDto == null) {
			mav.setViewName("redirect:/");
			return mav;
		}
		map.put("dpt_sq", memberDto.getDpt_sq() + "");
		List<LinkedHashMap<String, String>> searchList = commuteService.getCommuteListDepartment(map);
		System.out.println("searchList.size : "+searchList.size());
		mav.addObject("commuteList", searchList);
		mav.addObject("searchDate", map.get("searchDate"));
		mav.setViewName("/commute/list_department");
		return mav;
	}
	
}
