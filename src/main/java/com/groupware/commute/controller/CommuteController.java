package com.groupware.commute.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupware.commute.model.CommuteDto;
import com.groupware.commute.service.CommuteService;

@Controller
@RequestMapping("/commute")
public class CommuteController {
	
	@Autowired
	private CommuteService commuteService;
	
	@RequestMapping("/commute.kitri")
	public String CommuteList(Map<String, Object> map) {
		System.out.println("CommuteController  ¿Ô´Ù!!!!!");
		Map<String, String> map2 = new HashMap<>();
		List<CommuteDto> list = commuteService.getCommuteList(map2);
		map.put("commutelist", list);
		return "error/404";
	}
	
}
