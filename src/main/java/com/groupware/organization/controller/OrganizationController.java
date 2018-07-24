package com.groupware.organization.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupware.officerwork.model.OfficerworkDto;
import com.groupware.officerwork.service.OfficerworkService;
import com.groupware.organization.model.OrganizationDto;
import com.groupware.organization.service.OrganizationService;

@Controller
@RequestMapping("/organization")
public class OrganizationController {

	@Autowired
	private OrganizationService organizationService;
	
	@RequestMapping("/organization.kitri")
	public String listOrganization(Map<String, Object> map) {
		System.out.println("EmailController  ¿Ô´Ù!!!!!");
		List<OrganizationDto> list = organizationService.getListOrganization();
		map.put("eamilList", list);
		return "error/404";
	}
	
}
