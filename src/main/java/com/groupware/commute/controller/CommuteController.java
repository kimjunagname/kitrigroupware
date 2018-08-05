package com.groupware.commute.controller;

import java.util.HashMap;
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

@Controller
@RequestMapping("/commute")
public class CommuteController {
	
	@Autowired
	private CommuteService commuteService;
	
	@RequestMapping(value="/list.kitri", method=RequestMethod.GET)
	public ModelAndView CommuteList(HttpSession session) {
		System.out.println("CommuteController  CommuteList()");

		Map<String, String> map = new HashMap<String, String>();
//TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST 
		session.setAttribute("stf_sq", "5");
//			MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
//			map.put("stf_sq", memberDto.getStf_sq());
		if(map.size() == 0) {
			map.put("stf_sq", (String) session.getAttribute("stf_sq"));
		}
//TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST 
		
		List<CommuteDto> list = commuteService.getCommuteList(map);
		System.out.println("list size = " + list.size());
		ModelAndView mav = new ModelAndView();
		mav.addObject("stf_sq", session.getAttribute("stf_sq"));
		mav.addObject("list", list);
		mav.setViewName("/commute/list");
		
		return mav;
	}
	
	@RequestMapping(value="/list.kitri", method=RequestMethod.POST)
	public ModelAndView CommuteSearchList(HttpSession session, @RequestParam Map<String, String> map) {
		//TEST
		session.setAttribute("stf_sq", "5");
		
		//TEST
		System.out.println("CommuteController  CommuteSearchList()");
		System.out.println(map.size());
		ModelAndView mav = new ModelAndView();
		mav.addObject("stf_sq", map.get("stf_sq"));
		mav.setViewName("/commute/list");
		
		return mav;
	}
	
	
	@RequestMapping(value="/punch.kitri", method=RequestMethod.POST)
	public ModelAndView punch(HttpSession session, @RequestParam Map<String, String> map) {
		System.out.println("CommuteController  punch()");
//TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST TEST 
		session.setAttribute("stf_sq", 5);
//		MemberDto memberDto = (MemberDto) session.getAttribute("userinfo");
		int stf_sq = (int) session.getAttribute("stf_sq");
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
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/commute/list");
		return mav;
	}
	
	@RequestMapping(value="/listdepart.kitri", method=RequestMethod.GET)
	public ModelAndView CommuteListDepartment(Map<String, String> map) {
		System.out.println("CommuteController  CommuteListDepartment()");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/commute/list_department");
		return mav;
	}
	
}
