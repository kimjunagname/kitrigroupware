package com.groupware.commute.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.groupware.commute.service.CommuteService;

@Controller
@RequestMapping("/commute")
public class CommuteController {
	
	@Autowired
	private CommuteService commuteService;
	
	@RequestMapping("/list.kitri")
	public ModelAndView CommuteList(Map<String, Object> map) {
		System.out.println("CommuteController  왔다!!!!!");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/commute/list");
//		Map<String, String> map2 = new HashMap<>();
//		List<CommuteDto> list = commuteService.getCommuteList(map2);
//		map.put("commutelist", list);
//		return "error/404";
		
		return mav;
	}
	
	@RequestMapping("/listdepart.kitri")
	public ModelAndView CommuteListDepartment(Map<String, Object> map) {
		System.out.println("CommuteController  왔다!!!!!");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/commute/list_department");
		return mav;
	}
	
	
}
