package com.groupware.commute.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.groupware.commute.service.CommuteService;

@Controller
@RequestMapping("/commute")
public class CommuteController {
	
	@Autowired
	private CommuteService commuteService;
	
	@RequestMapping(value="/list.kitri", method=RequestMethod.GET)
	public ModelAndView CommuteList(HttpSession session, Map<String, Object> map) {
		System.out.println("CommuteController  CommuteList()");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/commute/list");
		
		return mav;
	}
	
	@RequestMapping(value="/listdepart.kitri", method=RequestMethod.GET)
	public ModelAndView CommuteListDepartment(Map<String, Object> map) {
		System.out.println("CommuteController  CommuteListDepartment()");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/commute/list_department");
		return mav;
	}
	
	
}
