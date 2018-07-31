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
	
	@RequestMapping("/login.kitri")
	public String loginform() {				
		return "/login/login";
	}
	
	@RequestMapping("/register.kitri")
	public String register() {
		return "/join/registration";
	}
	
	@RequestMapping("/idfind.kitri")
	public String idfind() {
		return "/login/idfind";
	}
	
	@RequestMapping("/pwfind.kitri")
	public String pwfind() {
		return "/join/pwfind";
	}
	
}
