package com.groupware.member.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.groupware.member.model.MemberDto;
import com.groupware.member.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/login.kitri", method=RequestMethod.GET)
	public String loginform() {				
		return "/login/login";
	}
	
	@RequestMapping(value="/login.kitri", method=RequestMethod.POST)
	public String loginform(@RequestParam Map<String, String> map, HttpSession session) {			
		MemberDto dto = memberService.login(map);		
		if(dto != null) {
			session.setAttribute("userinfo", dto);
			return "/approval/list";
		} else 
			return "/login/idfind";
		
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
