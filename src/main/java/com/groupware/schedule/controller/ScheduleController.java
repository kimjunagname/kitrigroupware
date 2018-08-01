package com.groupware.schedule.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.groupware.schedule.model.ScheduleDivisionDto;
import com.groupware.schedule.service.ScheduleService;

@Controller
@RequestMapping("/schedule")
public class ScheduleController {

	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping(value="/test.kitri")
	public ModelAndView listOrganization(Map<String, Object> map) {
		System.out.println("schedule controller in!!!");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/schedule/test");
		return mav;
	}
	
/*	
	@RequestMapping(value="/test.kitri")
	public String listOrganization(Map<String, Object> map) {
		System.out.println("schedule controller in!!!");
		List<ScheduleDivisionDto> list = scheduleService.getListSchedule();
		map.put("/schedule/test", list);
		return map;
	}
	
*/}
