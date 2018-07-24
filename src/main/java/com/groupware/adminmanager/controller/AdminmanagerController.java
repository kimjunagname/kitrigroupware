package com.groupware.adminmanager.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupware.adminmanager.service.AdminmanagerService;
import com.groupware.member.model.MemberDto;

@Controller
@RequestMapping("/admin")
public class AdminmanagerController {

	
	@Autowired
	private AdminmanagerService adminmanagerService;
	
	@RequestMapping("/admin.kitri")
	public String listAdminManager(Map<String, Object> map) {
		List<MemberDto> list = adminmanagerService.getListAdminManager();
		map.put("menulist", list);
		return "admin/board/boardmenu";
	}
}
