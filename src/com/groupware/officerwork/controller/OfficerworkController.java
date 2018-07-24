package com.groupware.officerwork.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupware.approval.model.ApprovalDto;
import com.groupware.form.service.FormService;
import com.groupware.officerwork.model.OfficerworkDto;
import com.groupware.officerwork.service.OfficerworkService;

@Controller
@RequestMapping("/officerwork")
public class OfficerworkController {

	
	@Autowired
	private OfficerworkService officerworkService;
	
	@RequestMapping("/officerwork.kitri")
	public String listOfficerwork(Map<String, Object> map) {
		System.out.println("EmailController  ¿Ô´Ù!!!!!");
		List<OfficerworkDto> list = officerworkService.getListOfficerwork();
		map.put("eamilList", list);
		return "error/404";
	}
	
}
