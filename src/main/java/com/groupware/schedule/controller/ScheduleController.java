package com.groupware.schedule.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupware.organization.model.OrganizationDto;
import com.groupware.organization.service.OrganizationService;
import com.groupware.schedule.model.ScheduleDivisionDto;
import com.groupware.schedule.service.ScheduleService;

@Controller
@RequestMapping("/schedule")
public class ScheduleController {

	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping("/schedule.kitri")
	public String listOrganization(Map<String, Object> map) {
		System.out.println("EmailController  ¿Ô´Ù!!!!!");
		List<ScheduleDivisionDto> list = scheduleService.getListSchedule();
		map.put("eamilList", list);
		return "error/404";
	}
	
}
