package com.groupware.form.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.groupware.approval.model.ApprovalDto;
import com.groupware.email.model.EmailDto;
import com.groupware.email.service.EmailService;
import com.groupware.form.service.FormService;

@Controller
@RequestMapping("/form")
public class FormController {

	@Autowired
	private FormService formService;
	
	@RequestMapping("/form.kitri")
	public String listForm(Map<String, Object> map) {
		System.out.println("EmailController  ¿Ô´Ù!!!!!");
		List<ApprovalDto> list = formService.getListForm();
		map.put("eamilList", list);
		return "error/404";
	}
	
	
	
}
