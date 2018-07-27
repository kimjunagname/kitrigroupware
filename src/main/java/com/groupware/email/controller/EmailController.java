package com.groupware.email.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.groupware.email.model.EmailDto;
import com.groupware.email.service.EmailService;

@Controller
@RequestMapping("/email")
public class EmailController {

	@Autowired
	private EmailService emailService;
	
	@RequestMapping(value="/emaillist.kitri", method=RequestMethod.GET)
	public String emailList() {
		return "email/receivemaillist";
	}
	
	@RequestMapping(value="/sendlist.kitri", method=RequestMethod.GET)
	public String sendList() {
		return "email/sendmaillist";
	}
	
	@RequestMapping(value="/keeplist.kitri", method=RequestMethod.GET)
	public String keepList() {
		return "email/keepmaillist";
	}
	
	
}
