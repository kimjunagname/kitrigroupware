package com.groupware.member.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupware.approval.model.ApprovalDto;
import com.groupware.form.service.FormService;
import com.groupware.member.model.MemberDto;
import com.groupware.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/form.kitri")
	public String listMember(Map<String, Object> map) {
		System.out.println("EmailController  ¿Ô´Ù!!!!!");
		List<MemberDto> list = memberService.getListmember();
		map.put("eamilList", list);
		return "error/404";
	}
	
	
}
