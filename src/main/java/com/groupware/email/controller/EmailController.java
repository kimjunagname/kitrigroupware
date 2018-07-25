package com.groupware.email.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupware.email.model.EmailDto;
import com.groupware.email.service.EmailService;

@Controller
@RequestMapping("/email")
public class EmailController {

	@Autowired
	private EmailService emailService;
	
	@RequestMapping("/emaillist.kitri")
	public String emailList(Map<String, Object> map) {
		System.out.println("EmailController  ¿Ô´Ù!!!!!");
	//	List<EmailDto> list = emailService.getListEmail();
	//	map.put("userInfo", list);
		return "schedule/list";
	}
	
}
