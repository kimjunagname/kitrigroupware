package com.groupware.form.service;

import java.util.List;

import com.groupware.approval.model.ApprovalDto;
import com.groupware.email.model.EmailDto;

public interface FormService {


	List <ApprovalDto> getListForm();
	
	
}
